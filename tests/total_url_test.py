import test_global_data_files
from collections import Counter
from rdflib.term import URIRef, Variable, _XSD_PFX, _is_valid_uri
from rdflib.namespace import RDF, RDFS
def all_url_test():
    print "todo"
    print ("test of getting global data")
    g = test_global_data_files.get_global_data()
    #print (g)
    predicates = Counter()
    subjects = Counter()
    predicate_types = Counter()
    predicate_types2 = Counter()
    objects = Counter()
    for x in g:
        p = x[1]
        s = x[0]
        o = x[2]
        predicates[p] += 1
        subjects[s] += 1
        objects[o] += 1
    print "predicates"
    g.namespace_manager.bind("schemaorg",'http://schema.org/',True)
    g.namespace_manager.bind("schemaorgs",'https://schema.org/',True)
    g.namespace_manager.bind("ov",'http://open.vocab.org/terms/',True)
    g.namespace_manager.bind("authcert",'http://www.w3.org/ns/auth/cert#',True)
    g.namespace_manager.bind("dc",'http://purl.org/dc/terms/',True)
    g.namespace_manager.bind("skos",'http://www.w3.org/2004/02/skos/core#',True)
    g.namespace_manager.bind("gcc_t",'file:///home/mdupont/experiments/gcc-ontology/data/results.ttl#',True)
    g.namespace_manager.bind("dct",'http://purl.org/dc/elements/1.1/',True)
    
    
    for (p,v) in  predicates.most_common(70):
        p2 = g.namespace_manager.qname(p)
        #print p2,p,v

        for c in g.triples((p,RDF.type,None)):

            if _is_valid_uri(c[2]):

            
                if ":" in c[2] :
                    try :
                        c2 = g.namespace_manager.qname(c[2])
                    except:
                        print "Could not spli", c[2]
                        c2 = c[2]
                else:
                    c2 = c[2]
            else:
                c2 = c[2]
            
            if _is_valid_uri(c[1]):
                c1= g.namespace_manager.qname(c[1]), 
            else:
                c1 = c[1]

            #print p2,p,v,c1,c2
            predicate_types[c[2]]+=1
    for (p,v) in  predicate_types.most_common(70):
        #print "pt",p,v
        for c in g.triples((p,RDF.type,None)):
            if _is_valid_uri(c[2]):          
                if ":" in c[2] :
                    try :
                        c2 = g.namespace_manager.qname(c[2])
                    except:
                        print "Could not spli", c[2]
                        c2 = c[2]
                else:
                    c2 = c[2]
            else:
                c2 = c[2]
            
            if _is_valid_uri(c[1]):
                c1= g.namespace_manager.qname(c[1]), 
            else:
                c1 = c[1]

            #print "type of pt",c2
            predicate_types2[c[2]]+=1
    for (p,v) in  predicate_types2.most_common(70):
        print "pt2",p,v
        
                
    # print "subjects"
    # for (s,v) in  subjects.most_common(20):
    #     p2 = g.namespace_manager.qname(p)
    #     print p2,v
    # print "objects"
    # for (o,v) in  objects.most_common(20):
    #     p2 = g.namespace_manager.qname(p)
    #     print p2,v
