import re
import inspect
import ast
import astunparse
from urlparse import urlparse
from path import Path

from ast import *
class PrototypeNamespace:
    "namespace of <url>"
    prefix = "<prefix>"
    terms  = [] # array of terms found

class PrototypeBaseClass:
    "base class"

class PrototypeType(PrototypeBaseClass):
    "prototype of a rdf type"
    namespace = PrototypeNamespace
    properties = []

class PrototypeProperty(PrototypeBaseClass):
    "prototype of a rdf property"
    domains = [PrototypeType]
    pranges = [PrototypeType]


def create_ont_module(class_name,prefix,url, imports, members):
    
    return Module(body=[
        
        Import(names=[alias(
            name='rdflib',
            asname=None)]),
        
        ImportFrom(
            module='rdflib',
            names=[alias(
                name='Namespace',
                asname=None)],
            level=0),
        
        ImportFrom(
            module='ontology',
            names=[alias(
                name='Ontology',
                asname=None)],
            level=0),

        
        ClassDef(
            name=class_name,
            bases=[Name(
                id='Ontology',
                ctx=Load())],
            body=[
                # insert the other imports inside the class
                imports,

                FunctionDef(
                    name='__init__',
                    args=arguments(
                        args=[Name(
                            id='self',
                            ctx=Param())],
                        vararg=None,
                        kwarg=None,
                        defaults=[]),
                    body=[Expr(value=Call(
                        func=Attribute(
                            value=Name(
                                id='Ontology',
                                ctx=Load()),
                            attr='__init__',
                            ctx=Load()),
                        args=[
                            Name(
                                id='self',
                                ctx=Load()),
                            Str(s=url)],
                        keywords=[],
                        starargs=None,
                        kwargs=None))],
                    decorator_list=[]),
                Assign(
                    targets=[Name(
                        id='prefix',
                        ctx=Store())],
                    value=Str(s=prefix)),

                members
                
            ],
            decorator_list=[]),

        Assign(
            targets=[Name(
                id=prefix,
                ctx=Store())],
            value=Call(
                args=[],
                keywords=[],
                starargs=[],
                kwargs=[],
                func=Name(
                    id=class_name,

                    ctx=Load()))),
        Assign(
            targets=[Name(
                id="ontology",
                ctx=Store())],
            value=Name(
                id=prefix,
                ctx=Store())
        )])

class Library :

    base_path = ["lib","ontologies"]

    def create_module(self, module, prefix, url, members = None, imports= None):

        p = Path(module)
        if True:
            prefix = str(prefix).replace('-','_')
            class_name = prefix.upper()
            print "module create:" + module, class_name
            ast = create_ont_module(class_name,prefix,url, imports, members)        
            code = astunparse.unparse(ast)

            o = open (module,"w")
            o.write(code)
            o.close()

    def createpath(self, path):
        "create the path needed"
        (base,name) = path.splitpath()
        base = Path(base)
        walk = []
        
        for x in base.splitall():
            if x == '' :
                continue
            walk.append(x)
            step = Path("/".join(walk))

            if not step.exists():
                print "going to makedir Step",step
                step.mkdir_p()
                #pdb.set_trace()
                #raise Exception("no more")

            else:
                pass
                #print "step", step
                
            # create the init path
            f = step + "/__init__.py"

            if not f.exists():
                print f
                f = open(f,"w")
                f.write("#"+step)
                f.close()

    def get_module (self,prefix,url):
        if 'http' not in url :
            return None
        #print "get module", url 
        
        pa=urlparse(url)
        path = Library.base_path[:]
        modules = []

        ### split out the netloc
        netloc = pa.netloc.replace(":"+str(pa.port),"")
        netparts =  netloc.split(".")
        for x in reversed(netparts) :
            if x=='www' :
                pass
            else:
                x  = x.replace('.','_')
                x  = x.replace(':','_')
                if x != '' :
                    path.append(x)

        # the path
        if pa.path != '' :
            parts = pa.path
        else:
            parts = 'ontology'

        # split out the path
        for x in parts.split("/"):
            x = x.replace('.','_')
            x = x.replace(':','_')
            x = x.replace('~','_')
            x = x.replace('-','_')

            # prefix the numbers
            if re.match('^([0-9])',x):
                x = "_" +x
            
            if x != '' :
                path.append(x)

        #print "Path",path
        path_obj = Path("/".join(path))
        #(base,name) = path_obj.splitpath()
        #base = Path(base)
                
        module = path_obj + ".py"

        #if module.exists():
            #print "module exists: " + module
        return module
    
    def get_import_path(self, module):
        import_path=module.replace("lib/","").replace("/",".").replace(".py","")
        return import_path
        #else :
        #    raise Exception ("No module found {0}".format(module))
    def get_import_alias(self, prefix):
        return prefix


class ClassGenerator :
    def calculate_module_name(url):
        "name this module"

    def calculate_module_prefix(url):
        "name this module locally"
        
    def calculate_member_name(url):
        "name this member of the imported module"
        
    def reference_type():
        "see if we need to import this"
    
    def add_property():
        "add a rdf property"
