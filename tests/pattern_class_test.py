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
