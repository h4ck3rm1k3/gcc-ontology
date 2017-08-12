import sys
import pprint
from ast import NodeTransformer, Str, Name, Param
from ast import Module, FunctionDef, arguments, Return, keyword
from ast import Load, ClassDef, Assign, Store
import ast
import inspect

# my hack for not installing the astunparse, just pip install it.
sys.path.append("/home/mdupont/experiments/astunparse/lib/")

import astunparse


def extract_ast(thing):
    """
    internal step, takes the thing and extracts ast
    """
    src = inspect.getsource(thing)
    return ast.parse(src)


class ReplaceObjects(NodeTransformer):
    def __init__(self, rep):
        self.rep = rep

    def visit_Call(self, node):
        offset = 0
        for x in node.keywords:
            if isinstance(x.value, Str):
                sv = x.value.s
                if sv in self.rep:
                    v = self.rep[sv]
                    key = node.keywords[offset].arg
                    c = create_load_name_dump(key, v)
                    node.keywords[offset] = c
            offset = offset + 1
        return self.generic_visit(node)


def do_replacements_objects(aast, **replacements):
    r = ReplaceObjects(replacements)
    nast = r.visit(aast)
    return nast


def define_pattern2(methodname, thing, **kw):
    args = []
    newkw = {}  # replace the string with variables

    # create a set of loads for the variables
    for k in kw:
        v = kw[k]
        p = create_param_name(v)
        args.append(p)
        newkw[k] = v

    aast = extract_ast(thing)
    ad = astunparse.dump(aast)
    newast = ast.parse(ad)
    newast2 = newast
    body = do_replacements_objects(newast2, **newkw)

    skip = body.body[0].value  # why do we need this?
    # we traverse the tree and remove the extra
    # Module(body=[Expr(value=Call(

    return define_replace_method(methodname, args, skip)


def create_load_name_dump(key, _id):
    return [
        keyword(
            arg=key,
            value=Name(id=_id, ctx=Load()))
    ]


def create_param_name(id):
    "creates a named parameter"
    return Name(
        id=id,
        ctx=Param())


def define_replace_method(methodname, args, body):
    """
    This generates an ast for a generic function that takes a list parameters
    and returns a generic body
    used to construct something like this

        def <methodname>(<arges>):
            return Module(body=<body>)

    The args parameters are like this :
        [ Name(id='<argname>', ctx=Param()), .... ]
    """

    return Module(  # top module
        body=[
            FunctionDef(  # new function
                name=methodname,
                args=arguments(
                    args=args,
                    vararg=None,
                    kwarg=None,
                    defaults=[]),
                body=[
                    Return(value=body)
                ],
                decorator_list=[]
            )  # module2
        ]
    )  # module


# begin of testing

class MetaClass(type):
    def __init__(cls, name, bases, nmspc):
        super(MetaClass, cls).__init__(name, bases, nmspc)


class BaseClass(object):
    pass


class ClassWithMetaclass(BaseClass):
    __metaclass__ = MetaClass


if __name__ == '__main__':

    newmethod = define_pattern2(
        "generate_metaclass",
        ClassWithMetaclass,
        ClassWithMetaclass='NewClassName',
        BaseClass='NewBaseClassName',
        MetaClass='MetaClassVariable')

    # print(astunparse.dump(newmethod))
    code = astunparse.unparse(newmethod)
    print(code)

    c = compile(code, '<string>', 'exec')
    exec(c)

    mc = generate_metaclass("somemeta", "somebase", "someclass")
    print(astunparse.unparse(mc))
