import test_global_data_files
from collections import Counter
from rdflib.term import URIRef, Variable, _XSD_PFX, _is_valid_uri
from rdflib.namespace import RDF, RDFS
import classgenerator
from ontology import Ontology
import pprint
import astunparse
import pprint
import ast
from ast import *

def rebind(g):
    g.namespace_manager.bind("rdf", "http://www.w3.org/1999/02/22-rdf-syntax-ns#",True)
    g.namespace_manager.bind("rdfs", "http://www.w3.org/2000/01/rdf-schema#",True)
    g.namespace_manager.bind("owl", "http://www.w3.org/2002/07/owl#",True)
    g.namespace_manager.bind("schemaorg",'http://schema.org/',True)
    g.namespace_manager.bind("schemaorgs",'https://schema.org/',True)
    g.namespace_manager.bind("ov",'http://open.vocab.org/terms/',True)
    g.namespace_manager.bind("authcert",'http://www.w3.org/ns/auth/cert#',True)
    g.namespace_manager.bind("dct",'http://purl.org/dc/terms/',True)
    g.namespace_manager.bind("skos",'http://www.w3.org/2004/02/skos/core#',True)
    g.namespace_manager.bind("gcc_t",'file:///home/mdupont/experiments/gcc-ontology/data/results.ttl#',True)
    g.namespace_manager.bind("dc",'http://purl.org/dc/elements/1.1/',True)
    g.namespace_manager.bind("cc","http://creativecommons.org/ns#",True)
    g.namespace_manager.bind("html","http://www.w3.org/1999/xhtml/vocab#",True)
    g.namespace_manager.bind("posix","http://www.w3.org/ns/posix/stat#",True)
    g.namespace_manager.bind("mads","http://www.loc.gov/mads/rdf/v1#",True)
    g.namespace_manager.bind("acl","http://www.w3.org/ns/auth/acl#",True)
    g.namespace_manager.bind("vann","http://purl.org/vocab/vann/",True)  
    g.namespace_manager.bind("gr","http://purl.org/goodrelations/v1#",True)  
    g.namespace_manager.bind("wgs84","http://www.w3.org/2003/01/geo/wgs84_pos#",True)  
    g.namespace_manager.bind("changeset","http://purl.org/vocab/changeset/schema#",True)  
    g.namespace_manager.bind("recordinfo","http://id.loc.gov/ontologies/RecordInfo#",True)  
    g.namespace_manager.bind("pim","http://www.w3.org/2000/10/swap/pim/contact#",True)  
    g.namespace_manager.bind("rddl","http://www.rddl.org/purposes#",True)  
    g.namespace_manager.bind("doap","http://usefulinc.com/ns/doap#",True)  
    g.namespace_manager.bind("voaf","http://purl.org/vocommons/voaf#",True)  
    g.namespace_manager.bind("siocs","http://rdfs.org/sioc/services#",True)  
    g.namespace_manager.bind("vocab","http://id.loc.gov/vocabulary/identifiers/",True)  
    g.namespace_manager.bind("void","http://rdfs.org/ns/void#",True)  
    g.namespace_manager.bind("person","http://www.w3.org/ns/person#",True)  
    g.namespace_manager.bind("siocn","http://rdfs.org/sioc/ns#",True)  
    g.namespace_manager.bind("rww","https://cc.rww.io/vocab#",True) 
    g.namespace_manager.bind("airport","http://www.megginson.com/exp/ns/airports#",True)  
    g.namespace_manager.bind("solid","http://www.w3.org/ns/solid/terms#",True)  
    g.namespace_manager.bind("formats","http://www.w3.org/ns/formats/",True)  
    g.namespace_manager.bind("mvcb","http://webns.net/mvcb/",True)
    
def all_url_test():
    l = classgenerator.Library()
    #print ("test of getting global data")
    g = test_global_data_files.get_global_data()
    #print (g)
    predicates = Counter()
    subjects = Counter()
    predicate_types = Counter()
    predicate_types2 = Counter()
    objects = Counter()
    rebind(g)
    for x in g:
        p = x[1]
        s = x[0]
        o = x[2]
        predicates[p] += 1
        subjects[s] += 1
        objects[o] += 1
    print "predicates"

    seen = {}
    libs = {}    
    for (p,v) in  predicates.most_common(4230):
        if 'openlinksw.com' in p:
            continue
        if 'cc.rww.io' in p :
            continue
        
        p2 = g.namespace_manager.qname(p)

        (ns,term) = p2.split(':')
        m = g.namespace_manager.store.namespace(ns)

        # skip
        if str(m) =='http://www.w3.org/1999/xhtml/vocab#':
            continue
    
        if ns not in seen  :
            #print "NS",ns, m
            
            seen[ns]=1
            if 'ns' in ns:
                print "g.namespace_manager.bind(\"{prefix}\",\"{url}\",True)  ".format(prefix=ns,url=m)
                #pass
            path = l.get_module(ns,m)
            #print ns, m, path
            if path:
                importl = l.get_import_path(path)
                prefix = l.get_import_path(ns)
                l.createpath(path)
                l.create_module(path,prefix,url=m)
                #print "import {module} as {prefix}".format(module=importl,prefix=ns)
                replace= {
                    'http://purl.org/dc/dcam/' : 'https://raw.githubusercontent.com/dcmi/vocabtool/master/build/dcam.rdf'
                }
                
                if str(m) in replace :
                    o = replace[str(m)]
                    #print "replacing " ,m,"with", o
                    m = o

                _format = 'guess'
                turtles = [
                    'http://www.w3.org/ns/ldp#',
                    'http://usefulinc.com/ns/doap#',
                    
                ]
                
                if str(m) in turtles  :
                    _format = 'turtle'
                xmls = [
                    'http://xmlns.com/foaf/0.1/',
                    'http://www.w3.org/ns/auth/cert#',
                    'http://www.w3.org/ns/auth/acl#',
                    'http://www.w3.org/2000/10/swap/pim/doc#',
                    'http://www.w3.org/2003/06/sw-vocab-status/ns#',
                ]
                
                if str(m) in xmls  :
                    _format = 'xml'
                o = Ontology(url=m,prefix=prefix,_format=_format)
                o.set_path(path)
                print "prefix", prefix, m
                libs[prefix]=o
                
    ## now revisit the graph and link it
    pprint.pprint(libs)
        
    for p in libs:
        o = libs[p]
        og = o.fetch(g.namespace_manager)
        rebind(og)
        od = o.extract_graph(og,l, libs)
        #print "url", m
        #print "path", path
        
        code = pprint.pformat(od)
        print code
        
        #print(astunparse.unparse(ast.parse(code)))
                
        # continue
    
    #     for c in g.triples((p,RDF.type,None)):

    #         if _is_valid_uri(c[2]):

            
    #             if ":" in c[2] :
    #                 try :
    #                     c2 = g.namespace_manager.qname(c[2])
    #                 except:
    #                     print "Could not spli", c[2]
    #                     c2 = c[2]
    #             else:
    #                 c2 = c[2]
    #         else:
    #             c2 = c[2]
            
    #         if _is_valid_uri(c[1]):
    #             c1= g.namespace_manager.qname(c[1]), 
    #         else:
    #             c1 = c[1]

    #         #print p2,p,v,c1,c2
    #         predicate_types[c[2]]+=1
    # for (p,v) in  predicate_types.most_common(70):
    #     #print "pt",p,v
    #     for c in g.triples((p,RDF.type,None)):
    #         if _is_valid_uri(c[2]):          
    #             if ":" in c[2] :
    #                 try :
    #                     c2 = g.namespace_manager.qname(c[2])
    #                 except:
    #                     print "Could not spli", c[2]
    #                     c2 = c[2]
    #             else:
    #                 c2 = c[2]
    #         else:
    #             c2 = c[2]
            
    #         if _is_valid_uri(c[1]):
    #             c1= g.namespace_manager.qname(c[1]), 
    #         else:
    #             c1 = c[1]

    #         #print "type of pt",c2
    #         predicate_types2[c[2]]+=1
    # for (p,v) in  predicate_types2.most_common(70):
    #     print "pt2",p,v
                        
    # print "subjects"
    # for (s,v) in  subjects.most_common(20):
    #     p2 = g.namespace_manager.qname(p)
    #     print p2,v
    # print "objects"
    # for (o,v) in  objects.most_common(20):
    #     p2 = g.namespace_manager.qname(p)
    #     print p2,v