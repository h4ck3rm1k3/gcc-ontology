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
        if (subject,RDF._type,self.nid) in g:
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

class RDF (Ontology):
    base = Namespace('http://www.w3.org/1999/02/22-rdf-syntax-ns#')
    prefix = 'rdf'    
    _type = rdflib.term.URIRef(base + 'type')

class RDFS (Ontology):
    base = Namespace('http://www.w3.org/2000/01/rdf-schema#')
    prefix = 'rdfs'    
    isDefinedBy = rdflib.term.URIRef(base + 'isDefinedBy')

class GCCInt (Ontology):
    base = Namespace('http://github.com/h4ck3rm1k3/gcc-ontology/blob/master/gcc_internals.ttl#')
    prefix = 'gcci'

    
class GCCSrc (Ontology):
    base = Namespace('https://h4ck3rm1k3.github.io/gogccintro/gcc/')
    prefix = 'gccsrc'

class GCC (Ontology):
    base = Namespace('https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#')
    prefix = 'gcc'
    
    scpe = rdflib.term.URIRef(base + 'scpe')
    srcp = rdflib.term.URIRef(base + 'srcp')
    _type = rdflib.term.URIRef(base + 'type')
    name = rdflib.term.URIRef(base + 'name')
    args = rdflib.term.URIRef(base + 'args')
    algn = rdflib.term.URIRef(base + 'algn')
    size = rdflib.term.URIRef(base + 'size')
    lngt = rdflib.term.URIRef(base + 'lngt')
    decl = rdflib.term.URIRef(base + 'decl')
    init = rdflib.term.URIRef(base + 'init') 

    body = rdflib.term.URIRef(base + 'body')

    op_0 = rdflib.term.URIRef(base + 'op_0')
    op_1 = rdflib.term.URIRef(base + 'op_1')
    expr = rdflib.term.URIRef(base + 'expr')
    fn = rdflib.term.URIRef(base + 'fn')
    p = rdflib.term.URIRef(base + 'P')
    
    argt = rdflib.term.URIRef(base + 'argt')
    chain = rdflib.term.URIRef(base + 'chain')
    strg = rdflib.term.URIRef(base + 'strg')


    ## node types
    function_decl = rdflib.term.URIRef(base + 'function_decl')
    parm_decl = rdflib.term.URIRef(base + 'parm_decl')
    #translation_unit_decl = rdflib.term.URIRef(gcc + 'translation_unit_decl')
    translation_unit_decl = NodeType(rdflib.term.URIRef(rdflib.term.URIRef(base + 'translation_unit_decl')))

    undefined_body = rdflib.term.URIRef(base + 'undefined_body')
        
class OWL (Ontology):
    base = Namespace('http://www.w3.org/2002/07/owl#')
    prefix = "owl"
    NamedIndividual =  rdflib.term.URIRef(rdflib.term.URIRef(base + 'NamedIndividual'))

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
        for t in self.g.triples((self.nid,RDF._type,None)):
            yield t[2]

            
class Prefixes :
    def __init__(self, names):
        self.names = []
        self.seen= {}
        self.lookup = {}
        for name in names :
            self.add(name)
            
    def add(self, name):
        self.names.append(name)
        #print (name.prefix, name.base)
        #self.lookup [name.prefix] = name.base
    def clean(self, name):
        for n in self.names:
            if n.base in name:
                name = name.replace(n.base, n.prefix + ":")

        if name not in self.seen :
            self.seen[name]=1
        else:
            self.seen[name]=self.seen[name]+1
        return name
    def report(self):
        for name in self.seen:
            v = self.seen[name]
            print ("{n} {c}".format(n=name,c=v))
    def print(self, x):
        pass
    
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

class FunctionCall(Named):
    def __init__(self,g,nid):
        Node.__init__(self,g,nid)
                
    def recurse(self, indent, p):
        i = indent * " "
        
        p.print ("{indent}FunctionCall {t1} ".format(
            indent=i,
            t1=p.clean(self.nid),
            #s=s,
        ))
        for t in self.g.triples((self.nid,None,None)):
            if t[1] in (GCC.op_0,GCC.op_1, GCC.expr, GCC.body, GCC.decl, GCC.init):
                #if t[2] == GCC.function_decl :
                #                else:
                p.print ("{indent}B: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))
                e = Expr(self.g,t[2])
                e.recurse(indent + 1, p)
            elif t[1]==RDF._type and t[2]==OWL.NamedIndividual:
                pass 
            else:
                
                p.print ("{indent} skip1: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))

class Expr(Node):
    def __init__(self,g,nid):
        Node.__init__(self,g,nid)
                
    def recurse(self, indent, p):
        i = indent * " "
        typename = ""
        for x in self.get_type():
            if x == OWL.NamedIndividual :
                pass
            else:        
                typename = typename + p.clean(x) + ";"
            
        p.print ("{indent}Exprobj {t1} {typename}".format(
            indent=i,
            
            typename=typename,
            t1=p.clean(self.nid)))
        for t in self.g.triples((self.nid,None,None)):
            if t[1].startswith(GCC.p):
                p.print ("{indent} BP: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))
                e = Expr(self.g,t[2])
                e.recurse(indent + 1, p)               
            elif t[1] in (GCC.op_0,GCC.op_1, GCC.expr, GCC.body, GCC.decl, GCC.init):
                p.print ("{indent} B: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))
                e = Expr(self.g,t[2])
                e.recurse(indent + 1, p)
            elif t[1] in (GCC.fn):
                p.print ("{indent}FN: {t1} {t2}".format(
                    indent=i,
                    t1=p.clean(t[1]),
                    t2=p.clean(t[2])
                ))
                e = FunctionCall(self.g,t[2])
                e.recurse(indent + 1, p)

            elif t[1]==RDF._type and t[2]==GCC.function_decl:
                d = FunctionDecl(self.g, self.nid)
                s = d.resolve()
                p.print ("{indent} FunctionName: {s}".format(indent=i,s=s))
            elif t[1]==RDF._type and t[2]==GCC.parm_decl:
                d = ParmDecl(self.g, self.nid)
                s = d.resolve()
                p.print ("{indent} ParmDecl: {s}".format(indent=i,s=s))
            elif t[1]==RDF._type and t[2]==OWL.NamedIndividual:
                pass
            elif t[1]==RDF._type :
                pass
            elif t[1]==GCC.algn :
                pass
            elif t[1]==GCC.size :
                pass
            elif t[1]==GCC.lngt :
                pass
            elif t[1]==GCC.scpe :
                pass
            elif t[1]==GCC._type :
                pass
            elif t[1]==GCC.srcp :
                pass
            elif t[1]==GCC.chain :
                pass
            else:
                
               p.print ("{indent} skip: {t1} {t2}".format(
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
    
class ParmDecl(Named):
    def __init__(self,g,nid):
        Node.__init__(self,g,nid)


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
    p.print ("Function decl {0}".format(p.clean(nid)))
    f = FunctionDecl(g,nid)

    nstr = f.resolve()
            
    p.print ("Found name str {0}".format(nstr))
    s = f.scope()
    if s == None :
       p.print ("No Scope")
        #return
    else:
        p.print ("scope {0}".format(p.clean(s)))
        maxc =  10
        for st in  Node(g,s).get_type():
            if st:          
                if maxc <= 0:
                    p.print ("Too Many")
                    return
                if st == OWL.NamedIndividual :
                    #print ("named id")
                    pass
                else:
                   p.print ("scope type {0}".format(p.clean(st)))


    if f.is_global():
       p.print ("IS global {0}".format(p.clean(nid)))

    ## args
    a = f.args()
    if a is not None:
        a = Args(g,a)
    while a is not None:
        # name
        strg = a.resolve()
        p.print ("arg {0}".format(strg))
        
        argt = a.argt()
        if argt is not None :
            argts = argt.resolve()
            p.print ("argt {0}".format(argts))
            
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
            p.print ("No body")
            
def t3st_load():
    g = global_test_data()
    p = Prefixes([
        GCC, OWL, RDFS,RDF,
        GCCSrc,
        GCCInt,
    ])    
    count = 0
    scope = rdflib.term.URIRef(GCC.scpe)
    func_decl = rdflib.term.URIRef(GCC.function_decl)
    count = 0
    sample = 2000
    for c in g.triples((None,RDF._type,func_decl)):
        count = count + 1
        if count < sample :
            #print(c)        
            #print(type(c))
            #pass
            do_function_decl(g,p, c[0])
        
    p.print ("scope {0}".format(count))
    p.report()
    
