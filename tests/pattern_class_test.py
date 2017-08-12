import sys
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
import astunparse
import pprint

from ast import NodeTransformer,Str, Name, Param,  Module, FunctionDef, arguments, Return, keyword, Load, ClassDef, Assign, Store 
#pattern_class_test.py:88: redefinition of unused 'visit_Tuple' from line 83
#pattern_class_test.py:138: tree may be undefined, or defined from star imports: ast
#pattern_class_test.py:138: local variable 'tree' is assigned to but never used


import ast
import inspect

def extract_ast(thing):
    """
    internal step, takes the thing and extracts ast
    """
    #print "going to get source of", thing
    src =inspect.getsource(thing)
    #print src
    return ast.parse(src)

# def do_replacements(aast, **replacements):
#     for x in extract_tokens(aast):
#         name = x[0]
#         val = x[1]
#         obj = x[2]
#         #print ("debug",name, val, obj)
#         if val in replacements :
            
#             new = replacements[val]
#             setattr(obj,name,new)
#             #print(astunparse.unparse(obj))
#     return aast

class ReplaceObjects(NodeTransformer):
    def __init__(self,rep):
        self.rep =rep
    def visit_Str(self, node):
        # print "str",node
        # pprint.pprint(node.__dict__)
        return self.generic_visit(node)
    def visit_Dict(self, node):
        # print "dict",node
        # pprint.pprint(node._fields)
        # pprint.pprint(node.__dict__)
        return self.generic_visit(node)
    
    def visit_Call(self, node):
        #print "call",node
        #print(astunparse.unparse(node))
        #pprint.pprint(node._fields)
        offset = 0
        for x in node.keywords:
            if isinstance(x.value,Str):
                sv = x.value.s
                if sv in self.rep:
                    v = self.rep[sv]

                    #print "replacement", v
                    #pprint.pprint(v)
                    #print(astunparse.unparse(v))
                                        
                    #pprint.pprint(node.keywords[offset].__dict__)
                    #print(astunparse.unparse(node.keywords[offset]))

                    key = node.keywords[offset].arg
                    c= create_load_name_dump(key,v)
                            
                    node.keywords[offset] = c
                    #print(astunparse.unparse(node))
                    #print(astunparse.unparse(node))
                    #print "check",sv,v
                else:
                    #print "skip",sv
                    pass
            else:
                #print "skip2",x.value
                #pprint.pprint(x.value)
                pass

            offset = offset + 1
        #pprint.pprint(node.__dict__)
        
        return self.generic_visit(node)
        #return node
    
    def visit_Tuple(self, node):
        # print "tuple",node
        # pprint.pprint(node._fields)
        # pprint.pprint(node.__dict__)
        return self.generic_visit(node)
    def visit_Assign(self, node):
        # print "assign",node
        # pprint.pprint(node._fields)
        # pprint.pprint(node.__dict__)
        return self.generic_visit(node)
        
    def visit_Name(self, node):
        # print node.id
        # pprint.pprint(node._fields)
        # pprint.pprint(node.__dict__)
        #print astunparse.dump(node)
        return self.generic_visit(node)
    # def visit_Load(self, node):
    #     #pprint.pprint(node)
    #     return self.generic_visit(node)
    
    
def do_replacements_objects(aast, **replacements):
    r = ReplaceObjects(replacements)
    nast  = r.visit(aast)
    return nast

    # for x in ast.walk(aast):
    #     d = x.__dict__
    #     for k in  d:
    #         if k in ('col_offset','lineno'):
    #             continue
    #         val = d[k]
    #         if isinstance(val, str):
    #             if val in replacements :
    #                 new = replacements[val]
    #                 pprint.pprint ([x,d])
                    
    # return aast

# def define_pattern(thing, **replacements):
#     """
#     defines a thing that is a pattern
#     keywords are a list of things that could be replaced
#     replacements are the replacements to make
#     """

#     aast = extract_ast(thing)
#     aast = do_replacements(aast,replacements)

#     tree = RewriteName().visit(tree)
    
#     print(astunparse.unparse(aast))
#     # for kw in replacements:
#     #     newv = replacements[kw]
#     #     #kwa = define_keyword(aast,kw)
#     #     aast = replace_pattern(aast, kw, newv)      
#     #     pprint.pprint(x)

#     return aast

# def extract_tokens(a):
#     """
#     extract the tokens from ast
#     """
    
#     for x in ast.walk(a):
#         #pprint.pprint([x,x.__dict__, x._fields])
#         d = x.__dict__
#         for k in  d:
#             if k in ('col_offset','lineno'):
#                 continue

#             v = d[k]
#             if isinstance(v, str):
#                 yield [k,v,x]
#             elif isinstance(v, int):
#                 yield [k,v,x]
            
# def foo(x):
#     return x + 1

class MetaClass(type):
    def __init__(cls, name, bases, nmspc):
        super(MetaClass, cls).__init__(name, bases, nmspc)
        #cls.uses_metaclass = lambda self : "Yes!"

class BaseClass(object):
    pass

class ClassWithMetaclass(BaseClass) :
     __metaclass__ = MetaClass

# def print_tokens(thing):
#     """
#     walk and print tokens
#     """
#     aast = extract_ast(thing)
#     for x in extract_tokens(aast):
#         pprint.pprint(x)

# def dump_tokens():
#     print_tokens(MetaClass)
#     print_tokens(ClassWithMetaclass)

# # def one_test():
# #     define_pattern(
# #         foo,
# #         foo = 'function_name',
# #         x   = 'parameter'
# #     )

# def dump_two(thing):
#     aast = extract_ast(thing)
#     ad = astunparse.dump(aast)
#     #newcode = compile(ad,'<string>','exec')
#     newast = ast.parse(ad)
#     #print_tokens(newast)
#     for x in extract_tokens(newast):
#         pprint.pprint(x)
#     print(astunparse.unparse(newast))
    
# def dump_three(thing):
#     aast = extract_ast(thing)
#     ad = astunparse.dump(aast)
#     newast = ast.parse(ad)
    
#     ad2 = astunparse.dump(newast)
#     newast2 = ast.parse(ad2)
    
#     #print_tokens(newast)
#     for x in extract_tokens(newast2):
#         pprint.pprint(x)
#     print(astunparse.unparse(newast2))

# def meta_test():

#     define_pattern(ClassWithMetaclass,
#                    MetaClass = "Foobar"
#     )

#     Name(id='classname', ctx=Param()),
    
def define_pattern2(methodname,thing,**kw):

    args = []
    newkw = {} #replace the string with variables
    
    # create a set of loads for the variables
    for k in kw:
        v = kw[k]
        #l = create_load_name(v)
        p = create_param_name(v)
        args.append(p)

        #pprint.pprint([ l,c,v])
        newkw[k]=v
        #print(c)
        #print(astunparse.unparse(c))
        #print(astunparse.dump(c))
                    
    aast = extract_ast(thing)
    ad = astunparse.dump(aast)
    newast = ast.parse(ad)
    #ad2 = astunparse.dump(newast)
    #newast2 = ast.parse(ad2)
    newast2 = newast
    #newast = aast
    
    #print(astunparse.unparse(newast2))
    #print(astunparse.dump(newast2))

    body = do_replacements_objects(newast2,**newkw)
    #print ("afterx")
    #print(astunparse.unparse(newast2))
    #print(astunparse.dump(newast2))

    #print(astunparse.dump(body))
    
    skip = body.body[0].value # why do we need this?
    # we traverse the tree and remove the extra
    # Module(body=[Expr(value=Call(
    
    #print(astunparse.dump(skip))
    # # now remove the Module(Body
    # #pprint.pprint(body.body[0])
    # pprint.pprint(skip)
    # pprint.pprint(skip.__dict__)
    
    return define_replace_method(methodname,args, skip)

# def create_metaclass_ast(classname, bases,metaclassname):
#     return Module(body=[ClassDef(name=classname,
#                                  bases=bases,
#                                  body=[Assign(targets=[Name(id='__metaclass__', ctx=Store())],
#                                               value=Name(id=metaclassname, ctx=Load()))], decorator_list=[])])


# def create_call_load_name_dump(_id):
#     return Call(
#         func=Name(
#             id='Name',
#             ctx=Load()
#         ),
#         args=[],
#         keywords=[
#             keyword(
#                 arg='id',
#                 value=Str(s=_id)),
#             keyword(
#                 arg='ctx',
#                 value=Call(
#                     func=Name(
#                         id='Load',
#                         ctx=Load()
#                 ),
#                     args=[],
#                 keywords=[],
#                     starargs=None,
#                     kwargs=None
#             )
#             )
#         ],
#         starargs=None,
#         kwargs=None)

def create_load_name_dump(key,_id):
    return [
            keyword(
                arg=key,
                value=Name(id=_id,ctx=Load()))
    ]        

# def create_load_name(id):
#     "creates a name reference"
#     return Name(
#         id=id,
#         ctx=Load())

def create_param_name(id):
    "creates a named parameter"
    return Name(
        id=id,
        ctx=Param())

                        
def define_replace_method(methodname,args, body):
    #args like: [Name(id='classname', ctx=Param()),
    #  Name(id='bases', ctx=Param()),
    #  Name(id='metaclassname', ctx=Param())
    # ]
    
    #print("define_replace_method body",astunparse.unparse(body))    
    return Module( # top module
        body=[
            FunctionDef( # new function
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
            ) # module2
        ]
    )# module

# def generate_metaclass2(MetaClassVariable, NewBaseClassName, NewClassName):
#     return Module(body=[ClassDef(name=NewClassName, bases=[Name(id=NewBaseClassName, ctx=Load())], body=[Assign(targets=[Name(id='__metaclass__', ctx=Store())], value=Name(id=MetaClassVariable, ctx=Load()))], decorator_list=[])])


if __name__ == '__main__' :
    #print "main routine"
    #print_tokens(create_metaclass_ast)
    #dump_two(create_load_name)
    #meta_test()
    #dump_two(ClassWithMetaclass)
    #dump_three(ClassWithMetaclass)
    newmethod =define_pattern2("generate_metaclass",
                    ClassWithMetaclass,
                    ClassWithMetaclass = 'NewClassName',
                    BaseClass = 'NewBaseClassName',
                    MetaClass = 'MetaClassVariable') # replace with parameter variable

    #print(astunparse.dump(newmethod))
    code = astunparse.unparse(newmethod)
    print (code)

    #c2 = "\nprint(astunparse.unparse(generate_metaclass('a', 'b', 'c')))"
    #code = code + c2
    
    c = compile(code,'<string>','exec')
    print (c)

    exec(c)
    
    mc = generate_metaclass("somemeta","somebase","someclass")
    print(astunparse.unparse(mc))
