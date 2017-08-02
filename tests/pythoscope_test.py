import sys
sys.path.append("/home/mdupont/experiments/pythoscope/")
sys.path.append("/home/mdupont/experiments/pythoscope/pythoscope")
import pprint
import pythoscope
from pythoscope.store import Project,Function
import sys
sys.path.append("/home/mdupont/experiments/py-loadr-forkr-debugr")
import forkr
# forkr.set_logging() # turn on all logging
import inspect
import ast
import sys
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
import astunparse
import pprint
from ast import *

def test_unparse_ast() :
    print "Hello Python!"
    
def pythoscope_t3st():
    project = Project.from_directory(".")
    #inspect_project(project)
    #add_tests_to_project(project, modules, template, force)
    #modname = "foo"
    #module = project.create_test_module_from_name(modname)
    #pprint.pprint(module)
    foo = Function("testfoo")
    
    #module = project.find_module_by_full_path(modname)
    #pprint.pprint(module)
    #pprint.pprint(module.__dict__)
    #pprint.pprint(dir(module))
    #module.objects.append(foo)
    #template = "unittest"
    #generator = pythoscope.generator.TestGenerator.from_template(template)
    #generator._add_tests_for_module(module, project,  True)

    code = test_unparse_ast
    ast2 = ast.parse(inspect.getsource(code))
    code2 = astunparse.unparse(ast2)
    
    m = project.create_module("tests/foo123.py", code=code2)
    #pprint.pprint(m.__dict__)

    pprint.pprint(project.__dict__)

    for module in project.get_modules():
        module.changed =True
         #     print("Calling save() on module %r" % module.subpath)
    #     module.save()

    project.save()

if __name__ == '__main__' :
    pythoscope_test()
