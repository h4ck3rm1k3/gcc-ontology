
import inspect
import ast
import sys
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
import astunparse
import pprint
from ast import *
def t3st_unparse_ast():
    return Module(body=[FunctionDef(
        name='test_unparse',
        args=arguments(
            args=[],
            vararg=None,
            kwarg=None,
            defaults=[]),
        body=[
            Assign(
                targets=[Name(
                    id='code',
                    ctx=Store())],
                value=Name(
                    id='test_unparse',
                    ctx=Load())),
            Print(
                dest=None,
                values=[Call(
                    func=Attribute(
                        value=Name(
                            id='astunparse',
                            ctx=Load()),
                        attr='unparse',
                        ctx=Load()),
                    args=[Call(
                        func=Attribute(
                            value=Name(
                                id='ast',
                                ctx=Load()),
                            attr='parse',
                            ctx=Load()),
                        args=[Call(
                            func=Attribute(
                                value=Name(
                                    id='inspect',
                                    ctx=Load()),
                                attr='getsource',
                                ctx=Load()),
                            args=[Name(
                                id='code',
                                ctx=Load())],
                            keywords=[],
                            starargs=None,
                            kwargs=None)],
                        keywords=[],
                        starargs=None,
                        kwargs=None)],
                    keywords=[],
                    starargs=None,
                    kwargs=None)],
                nl=True),
            Print(
                dest=None,
                values=[Call(
                    func=Attribute(
                        value=Name(
                            id='astunparse',
                            ctx=Load()),
                        attr='dump',
                        ctx=Load()),
                    args=[Call(
                        func=Attribute(
                            value=Name(
                                id='ast',
                                ctx=Load()),
                            attr='parse',
                            ctx=Load()),
                        args=[Call(
                            func=Attribute(
                                value=Name(
                                    id='inspect',
                                    ctx=Load()),
                                attr='getsource',
                                ctx=Load()),
                            args=[Name(
                                id='code',
                                ctx=Load())],
                            keywords=[],
                            starargs=None,
                            kwargs=None)],
                        keywords=[],
                        starargs=None,
                        kwargs=None)],
                    keywords=[],
                    starargs=None,
                    kwargs=None)],
                nl=True)],
        decorator_list=[])])

def t3st_unparse():
    code = test_unparse_ast
    print(astunparse.unparse(ast.parse(inspect.getsource(code))))
    # get a pretty-printed dump of the AST
    print(astunparse.dump(ast.parse(inspect.getsource(code))))
