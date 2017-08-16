"""
use normal python code prototype for code generation by replacing tokens on ast.
generates a function to do the replacement and then executes it inline without writing new files.
"""
import sys
import pprint
from ast import NodeTransformer, Str, Name, Param
from ast import Module, FunctionDef, arguments, Return, keyword
from ast import Load, ClassDef, Assign, Store
import ast
import inspect

# my hack for not installing the astunparse, just pip install it.
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
sys.path.append("../lib/")

import astunparse

from ast_pattern import *

def example_empty_function_with_no_parameters_and_pass_body():
    pass

def example_complex_class():
    class F:
        def __init__(self,x):
            self.x=x

def recurse_ast():
    x = inspect.getsource(ast)
    a = ast.parse(x)
    code = astunparse.dump(a)
    for x in xrange(0,3):
        print x
        #print code
        f = open ("test_{x}.py".format(x=x),"w")
        f.write(code)
        f.close()
        c = ast.parse(code)
        code = astunparse.dump(c)
    
def new_method():
    m2 = extract_ast(example_complex_class)

    code = astunparse.dump(m2)
    
    for x in xrange(0,3):
        print x
        #print code
        f = open ("test_{x}.py".format(x=x),"w")
        f.write(code)
        f.close()
        c = ast.parse(code)
        code = astunparse.dump(c)
        #print code

#new_method()
recurse_ast()
