#!/usr/bin/python
from __future__ import print_function
__global_test_data__=None

import sys
import pprint
import rdflib

from rdflib.namespace import Namespace

class NodeType :
    def __init__(self,nid):
        self.nid = nid

    def is_type(self, g,subject):
        if (subject,RDFS._type,self.nid) in g:
            return True
        else:
            return False

def global_test_data():
    if __global_test_data__ is not None :
        return __global_test_data__
    else:
        return rdflib.Graph()

class Ontology:
    pass

class RDFS (Ontology):
    base = Namespace('http://www.w3.org/1999/02/22-rdf-syntax-ns#')
    prefix = 'rdfs'    
    _type = rdflib.term.URIRef(base + 'type')


class GCC (Ontology):
    base = Namespace('https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#')
    prefix = 'gcc'
    
    scpe = rdflib.term.URIRef(base + 'scpe')
    name = rdflib.term.URIRef(base + 'name')
    args = rdflib.term.URIRef(base + 'args')

    body = rdflib.term.URIRef(base + 'body')

    op_0 = rdflib.term.URIRef(base + 'op_0')
    op_1 = rdflib.term.URIRef(base + 'op_1')
    expr = rdflib.term.URIRef(base + 'expr')
    #fn = rdflib.term.URIRef(base + 'fn')
    p = rdflib.term.URIRef(base + 'P')
    
    argt = rdflib.term.URIRef(base + 'argt')
    chain = rdflib.term.URIRef(base + 'chain')
    strg = rdflib.term.URIRef(base + 'strg')
    function_decl = rdflib.term.URIRef(base + 'function_decl')
    #translation_unit_decl = rdflib.term.URIRef(gcc + 'translation_unit_decl')
    translation_unit_decl = NodeType(rdflib.term.URIRef(rdflib.term.URIRef(base + 'translation_unit_decl')))

    undefined_body = rdflib.term.URIRef(base + 'undefined_body')
        
class OWL (Ontology):
    base = Namespace('http://www.w3.org/2002/07/owl#')
    prefix = "owl"
    NamedIndividual =  NodeType(rdflib.term.URIRef(rdflib.term.URIRef(base + 'NamedIndividual')))

class Node :
    def __init__(self,g, nid):
        self.g = g
        self.nid = nid

    def get_one(self,pred):
        for c in self.g.triples((self.nid,pred,None)):
            return c[2]
        else:
            return None

    def get_type(self):
        for t in self.g.triples((self.nid,RDFS._type,None)):
            yield t[2]

            
class Prefixes :
    def __init__(self, names):
        self.names = []
        
        self.lookup = {}
        for name in names :
            self.add(name)
            
    def add(self, name):
        self.names.append(name)
        print (name.prefix, name.base)
        #self.lookup [name.prefix] = name.base
    def clean(self, name):
        for n in self.names:
            if n.base in name:
                name = name.replace(n.base, n.prefix + ":")
                
        return name

class Named(Node):
    """
    Named object with a chain of names ending in a string
    """
    def __init__(self,g,nid):
        Node.__init__(self,g,nid)

    def name(self):
        n2 =  self.get_one(GCC.name)
        n = None 
        if n2 is not None :
            n = Named(self.g, n2)
        return n

    def strg(self):
        return self.get_one(GCC.strg)

    def body(self):
        return self.get_one(GCC.body)

    def resolve(self):
        n = self.name()
        nstr = None
    
        while n is not None :
            if nstr is None :
                nstr = n.strg()

            if nstr is None :
                n = n.name()
            else:
                n = None # end
        return nstr

class Expr(Node):
    def __init__(self,g,nid):
        Node.__init__(self,g,nid)
                
    def recurse(self, indent, p):
        i = indent * "\t"
        print ("{indent}Exprobj {t1}".format(
            indent=i,
            t1=p.clean(self.nid)))
        for t in self.g.triples((self.nid,None,None)):
            if t[1].startswith(GCC.p):
                print ("\t{indent} BP: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))
                e = Expr(self.g,t[2])
                e.recurse(indent + 1, p)               
            elif t[1] in (GCC.op_0,GCC.op_1, GCC.expr):
                print ("\t{indent} B: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))
                e = Expr(self.g,t[2])
                e.recurse(indent + 1, p)
            else:
                print ("\t{indent} skip: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))

class Description():
    def __init__(self, quote, source):
        self.quote=quote
        self.source=source
        
class CleanupPointExpr(Expr):

    description = Description(quote="""These nodes represent full-expressions. The single operand is an expression to evaluate. Any destructor calls engendered by the creation of temporaries during the evaluation of that expression should be performed immediately after the expression is evaluated.""",
                              source='https://gcc.gnu.org/onlinedocs/gccint/Unary-and-Binary-Expressions.html')
    
    def _type(self):
        # type that expression evals to
        pass
    
    def op_0(self):
        pass
    
class Chained(Node):

    def __init__(self,g,nid):
        Node.__init__(self,g,nid)

    def chain(self):
        return self.get_one(GCC.chain)

class Args(Chained, Named):

    def __init__(self,g,nid):
        Chained.__init__(self,g,nid)
        Named.__init__(self,g,nid)

    def argt(self):
        t = self.get_one(GCC.argt)
        if t is not None:
            t= Named(self.g,t)
        return t

class FunctionDecl(Named):

    def __init__(self,g,nid):
        Node.__init__(self,g,nid)

    def scope(self):
        return self.get_one(GCC.scpe)

    def args(self):
        return self.get_one(GCC.args)
          
    def is_global(self):
        s = self.scope()
        return GCC.translation_unit_decl.is_type(self.g,s)
    

def do_function_decl(g,p,nid):
    print ("Function decl {0}".format(p.clean(nid)))
    f = FunctionDecl(g,nid)

    nstr = f.resolve()
            
    print ("Found name str {0}".format(nstr))
    s = f.scope()
    if s == None :
        print ("\tNo Scope")
        #return
    else:
        print ("\tscope {0}".format(p.clean(s)))
        maxc =  10
        for st in  Node(g,s).get_type():
            if st:          
                if maxc <= 0:
                    print ("Too Many")
                    return
                if st == OWL.NamedIndividual.nid :
                    #print ("\t\tnamed id")
                    pass
                else:
                    print ("\t\tscope type {0}".format(p.clean(st)))


    if f.is_global():
        print ("\t\tIS global {0}".format(p.clean(nid)))

    ## args
    a = f.args()
    if a is not None:
        a = Args(g,a)
    while a is not None:
        # name
        strg = a.resolve()
        print ("\t\targ {0}".format(strg))
        
        argt = a.argt()
        if argt is not None :
            argts = argt.resolve()
            print ("\t\targt {0}".format(argts))
            
        ## find next
        a = a.chain()
        if a is not None:
            a = Args(g,a)

    # body
    b = f.body()
    if b is not None:
        if b != GCC.undefined_body:
            e = Expr(g, b)
            e.recurse(1,p)
        else:
            print ("No body")
            
def test_load():
    g = global_test_data()
    p = Prefixes([
        GCC, OWL, RDFS
    ])
    
    #print ("Global", g)
    #print ("Global", dir(g))
    #Global [
    #'_Graph__get_identifier', '_Graph__get_store', '_Graph__identifier', '_Graph__namespace_manager', '_Graph__store', '__add__', '__and__', '__class__', '__cmp__', '__contains__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__gt__', '__hash__', '__iadd__', '__init__', '__isub__', '__iter__', '__le__', '__len__', '__lt__', '__module__', '__mul__', '__new__', '__or__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__slots__', '__str__', '__sub__', '__subclasshook__', '__weakref__', '__xor__', '_get_namespace_manager', '_process_skolem_tuples', '_set_namespace_manager', 'absolutize', 'add', 'addN',
    #'all_nodes',
    #'bind', 'close', 'comment', 'commit', 'compute_qname', 'connected', 'context_aware', 'de_skolemize',
    #'default_union', 'destroy', 'formula_aware', 'identifier', 'isomorphic',
    #'items',
    #'label', 'load', 'md5_term_hash', 'n3', 'namespace_manager', 'namespaces',
    #'objects', 'open', 'parse', 'predicate_objects',
    #'predicates', 'preferredLabel', 'qname', 'query', 'remove', 'resource', 'rollback', 'seq', 'serialize', 'set', 'skolemize', 'store', 'subject_objects', 'subject_predicates', 'subjects', 'toPython', 'transitiveClosure', 'transitive_objects', 'transitive_subjects', 'triples', 'triples_choices', 'update', 'value']
    #print ("Global", g.__dict__)
    count = 0
    # for c in g.objects():
    #     count = count + 1
    # print ("objects {0}".format(count))


    scope = rdflib.term.URIRef(GCC.scpe)
    func_decl = rdflib.term.URIRef(GCC.function_decl)
    count = 0
    sample = 200    
    for c in g.triples((None,RDFS._type,func_decl)):
        count = count + 1
        if count < sample :
            #print(c)        
            #print(type(c))
            #pass
            do_function_decl(g,p, c[0])
        
    print ("scope {0}".format(count))
    
