import sys
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
import astunparse
import pprint 
from ast import *
import ast
import inspect

def generate_metaclass(MetaClassVariable, NewBaseClassName, NewClassName):
    return Module(body=[ClassDef(name=NewClassName, bases=[Name(id=NewBaseClassName, ctx=Load())], body=[Assign(targets=[Name(id='__metaclass__', ctx=Store())], value=Name(id=MetaClassVariable, ctx=Load()))], decorator_list=[])])

m = generate_metaclass("a","b","d")
#print(astunparse.unparse(m))
code = generate_metaclass
print(astunparse.unparse(ast.parse(inspect.getsource(code))))
# get a pretty-printed dump of the AST
print(astunparse.dump(ast.parse(inspect.getsource(code))))
