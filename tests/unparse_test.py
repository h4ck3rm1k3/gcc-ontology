import sys
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
import astunparse
import pprint 
from ast import *
import ast
import inspect

def create_load_name_dump(_id):
    return Call(
        func=Name(
            id='Name',
            ctx=Load()
        ),
        args=[],
        keywords=[
            keyword(
                arg='id',
                value=Str(s=_id)),
            keyword(
                arg='ctx',
                value=Call(
                    func=Name(
                        id='Load',
                        ctx=Load()
                ),
                    args=[],
                keywords=[],
                    starargs=None,
                    kwargs=None
            )
            )
        ],
        starargs=None,
        kwargs=None)

def create_load_name(id):
    "creates a name reference"
    return Name(
        id=id,
        ctx=Load())

def d(c):
    print "dict",c
    pprint.pprint(c._fields)
    pprint.pprint(c.__dict__)
    print(astunparse.unparse(c))
    print(astunparse.dump(c))

def x1():
    return "foo"
#v="foo"
#l = create_load_name(v)
#c= create_load_name_dump(v)

#kw = keyword( arg='id',value=v)

#n =Name(id=v, ctx=Load())
#d2 = astunparse.dump(n)
#n2 = ast.parse(d2)

#['_AnnAssign',
# '
# '_Assert',
# ' '_Assign',
# ' '_AsyncFor',
# ' '_AsyncFunctionDef',
# ' '_AsyncWith',
# ' '_Attribute',
# ' '_AugAssign',
# ' '_Await',
# ' '_BinOp',
# ' '_BoolOp',
# ' '_Break',
# ' '_Bytes',
# ' '_Call',
# ' '_ClassDef',
# ' '_Compare',
# ' '_Continue',
# ' '_Delete',
# ' '_Dict',
# ' '_DictComp',
# ' '_Ellipsis',
# ' '_ExceptHandler',
# ' '_Exec',
# ' '_Expr',
# ' '_Expression',
# ' '_ExtSlice',
# ' '_For',
# ' '_FormattedValue',
# ' '_FunctionDef',
# ' '_GeneratorExp',
# ' '_Global',
# ' '_If',
# ' '_IfExp',
# ' '_Import',
# ' '_ImportFrom',
# ' '_Index',
# ' '_Interactive',
# ' '_JoinedStr',
# ' '_Lambda',
# ' '_List',
# ' '_ListComp',
# ' '_Module',
# ' '_Name',
# ' '_NameConstant',
# ' '_Nonlocal',
# ' '_Num',
# ' '_Pass',
# ' '_Print',
# ' '_Raise',
# ' '_Repr',
# ' '_Return',
# ' '_Set',
# ' '_SetComp',
# ' '_Slice',
# ' '_Starred',
# ' '_Str',
# ' '_Subscript',
# ' '_Try',
# ' '_TryExcept',
# ' '_TryFinally',
# ' '_Tuple',
# ' '_UnaryOp',
# ' '_While',
# ' '_With',
# ' '_Yield',
# ' '_YieldFrom',
# ' '__doc__',
# ' '__init__',
# ' '__module__',
# ' '_alias',
# ' '_arg',
# ' '_arguments',
# ' '_comprehension',
# ' '_generic_For',
# ' '_generic_FunctionDef',
# ' '_generic_With',
# ' '_indent',
# ' '_keyword',
# ' '_withitem',
# ' 'binop',
# ' 'boolops',
# ' 'cmpops',
# ' 'dispatch',
# ' 'enter',
# ' 'f',
# ' 'fill',
# ' 'format_conversions',
# ' 'future_imports',
# ' 'leave',
# ' 'unop',
# ' 'write']
#d(kw)
#d(n2)
#d(l)
d(c)
