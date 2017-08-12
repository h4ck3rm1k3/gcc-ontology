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

def args(extract_metavariable_1):
    pass

def generate_param_name(name):
    return Name(
        id=name,
        ctx=Param())

def generate_args(*args):
    return [ generate_param_name(x) for x in args ]

def look_for(x):
    pass
def replace(x,name):
    pass
def extract_parent(x,name):
    pass

def some_body():
    'extract_metavariable_1'
    
def refine_body():
    m2 = extract_ast(some_body)
    code = astunparse.dump(m2)
    print code
    #name = extract_parent(replace(look_for('extract_metavariable_1'),"name"))

#refine_body()

def refine_args():
    m2 = extract_ast(args)
    code = astunparse.dump(m2)
    name = extract_parent(replace(look_for('extract_metavariable_1'),"name"))

def extract_metavariable_string_methodname(extract_metavariable_listelement_parameter_name):
    'extract_metavariable_string_function_body'

def new_method():
    m2 = extract_ast(extract_metavariable_methodname)
    code = astunparse.dump(m2)
    print code

def old_method():
    m = define_replace_method("extract_metavariable_methodname",generate_args("extract_metavariable_list_element"),Str(s='extract_metavariable_function_body'))
    code = astunparse.dump(m)
    print(code)

#code = astunparse.unparse(m)
#print(code)

new_method()
