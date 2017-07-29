import rdflib
from urlparse import urlparse
from path import Path
import sys
import importlib
sys.path.append('lib')
import inspect
import ast
import sys
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
import astunparse
import pprint

from ast import *

def create_ont_module(class_name,prefix,url):
    
    return Module(body=[
        
        Import(names=[alias(
            name='rdflib',
            asname=None)]),
        
        ImportFrom(
            module='gccont.ontology',
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
                    value=Str(s=prefix))],
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
    
for p in [
        ('xml', rdflib.term.URIRef(u'http://www.w3.org/XML/1998/namespace')),
        #('xsd', rdflib.term.URIRef(u'https://www.w3.org/2000/10/XMLSchema')),
        ('owl', rdflib.term.URIRef(u'http://www.w3.org/2002/07/owl#')),
        #('gcc', rdflib.term.URIRef(u'https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#')),
        ('xsd', rdflib.term.URIRef(u'http://www.w3.org/2001/XMLSchema#')),
        ('rdfs', rdflib.term.URIRef(u'http://www.w3.org/2000/01/rdf-schema#')),
        ('rdf', rdflib.term.URIRef(u'http://www.w3.org/1999/02/22-rdf-syntax-ns#'))] :
    prefix=p[0]
    url = p[1]
    pa=urlparse(url)
    path = ["lib","gccont","ontologies"]

    if pa.netloc=='www.w3.org' :
        path.append('org')
        path.append('w3')
        path_obj = Path("/".join(path)+ pa.path)    
        #print (path_obj)
        #.mkdir(parents=True, exist_ok=True)
        (base,name) = path_obj.splitpath()
        base = Path(base)
        #print "part",base,name
        walk = []
        for x in base.splitall():
            if x == '' :
                continue
            walk.append(x)
            #print walk
            step = Path("/".join(walk))
            #print "Step",step
            step.mkdir_p()
            f = step + "/__init__.py"
            #print f
            if not f.exists():
                #print "exists"
                f = open(f,"w")
                f.write("#"+step)
                f.close()
        module = path_obj + ".py"
        if module.exists():
            #print "module exists:" + module
            import_path=module.replace("lib/","").replace("/",".").replace(".py","")
            import_module = importlib.import_module(import_path)
            
            print "import:" + str(import_module)
            #print(astunparse.dump(ast.parse(inspect.getsource(import_module))))
        else:

            class_name = str(prefix).upper()
            print "module create:" + module, class_name
            ast = create_ont_module(class_name,prefix,url)        
            code = astunparse.unparse(ast)
            o = open (module,"w")
            o.write(code)
            o.close()
