"""
use normal python code prototype for code generation by replacing tokens on ast.
generates a function to do the replacement and then executes it inline without writing new files.
"""
import sys
import pprint
#from ast import NodeTransformer, Str, Name, Param
#from ast import Module, FunctionDef, arguments, Return, keyword
#from ast import Load, ClassDef, Assign, Store
import ast
import inspect

# my hack for not installing the astunparse, just pip install it.
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
sys.path.append("../lib/")

import astunparse

from ast_pattern import *

from fast import Module, Expr, Call, Name, Load, keyword, List, Str, Num

def example_simple_function(example_first_parameter_name,example_second_parameter_name):
    "example constant string return type"

def new_method():
    m2 = extract_ast(example_simple_function)

    code = astunparse.dump(m2)

    c2 = ast.parse(code)
    code2 = astunparse.dump(c2)
    rename = "from fast import Module, Expr, Call, Name, Load, keyword, List, Str, Num\n"
    c3 = rename + "def eval_body():\n  "+code2 + "\neval_body()"

    f = open ("test_eval_new_code_1.py","w")
    f.write(c3)
    f.close()

    c = compile(c3, '<string>', 'exec')
    exec(c)
    #eval_body() # run the new code

    
        #c = ast.parse(code)
        #code = astunparse.dump(c)
        #print code

new_method()

