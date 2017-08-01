#
from urlparse import urlparse
import rdflib
from rdflib import Graph
from rdflib.namespace import Namespace, NamespaceManager
from path import Path
import requests
import magic
mime = magic.Magic(mime=True, uncompress=True)
from bs4 import BeautifulSoup, Doctype

def doctype(soup):
    items = [item for item in soup.contents if isinstance(item, Doctype)]
    return items[0] if items else None

def try_parse(filen, url, g):
    print "trying to parse", filen, url
    mt = mime.from_file(filen)
    if mt == 'inode/x-empty':
        pass
    elif mt == 'text/html':
        pass
    elif mt in( 'text/plain','text/x-makefile'):
        #print ("going to read turtle ",raw)
        try :
            g.load(filen,format='turtle')

        except Exception as e:
            print "error reading turtle",e
            try :
                g.load(filen)                     
            except Exception as e :
                print "error reading rdfxml", e
                return None

    elif mt in ('text/xml'):
        #print ("going to read rdf/xml ",raw)

        with open(filen) as fp:
            soup = BeautifulSoup(fp,"lxml")
            dt = doctype(soup)
            if dt == '' :
                g.load(filen)                     
            else:
                print "Found html",url,"TITLE",soup.title,"DT=",dt, "in file: ", raw

        #g.load(raw)
        #g.serialize(ttl, format="turtle")
    else :
        #print "mime",mt, "mt",raw
        pass
    
    
class Ontology:
    def __init__(self, url):
        self.base=Namespace( url)
        self.namespace_manager=None
        self.path = ""
        self.import_path=""
        
    def set_path(self,path):
        self.path=path
        
    def bind_this(self, namespace_manager):
        namespace_manager.bind(self.prefix, self.base, override=False)
        self.namespace_manager=namespace_manager

    def qname(self,g,x):
        try :
            #o1 = g.namespace_manager.qname(x)
            prefix, namespace, name = g.namespace_manager.compute_qname(x)
            # full : namespace
            #print prefix,name
            o1 = [prefix,name]
        except Exception as e:
            #print e
            o1 = [None,x]
        return o1
        
    def generate(self, namespace_manager):
        # generate a class for this ontology
        #passimport rdflib
        g=rdflib.Graph(namespace_manager=namespace_manager)
        #print "generating for " + self.prefix
        #print "generating for base " + self.base
        myclass = {}
        others = []
        
        self.bind_this(namespace_manager)

        #print "path:",self.path
        ttl = self.path.replace('.py','.ttl')
        raw = self.path.replace('.py','.raw')
        ttl_path = Path(ttl)
        raw_path = Path(raw)
        if not ttl_path.exists() :
            if  not raw_path.exists():
                if 'http' not in self.base :
                    return
                try :
                    print "Fetching:" + self.base
                    #return
                    headers = {'accept': 'application/rdf+xml, application/xhtml+xml;q=0.3, text/xml;q=0.2, application/xml;q=0.2, text/html;q=0.3, text/plain;q=0.1, text/n3, text/rdf+n3;q=0.5, application/x-turtle;q=0.2, text/turtle;q=1'}
                    r = requests.get(self.base, timeout=3, headers=headers)
                    rtype = r.headers['content-type']
                    f = open(raw,"wb")
                    f.write(r.text)
                    f.close()
                    try_parse(raw,self.base,g)
                    #g.serialize(ttl, format="turtle")
                    g.serialize(ttl, format="turtle")
                except Exception as e:
                    print e
        else:
            try_parse(ttl,self.base,g)

        return g

    def extract_graph(self, g):
        #os.path.dirname(os.path.abspath(__file__))
        
        for s,p,o in g:

            #s1 = g.namespace_manager.qname(s)
            #p1 = g.namespace_manager.qname(p)

            o1 = self.qname(g,o)
            p1 = self.qname(g,p)
            s1 = self.qname(g,s)

            k = s1[1] # term of subject

            try :
                if s1[0]== self.prefix:

                    if k in myclass :
                        myclass[k].append([p1,o1])
                    else:
                        myclass[k] = [[p1,o1]]
                elif str(s1[1])== str(self.base):

                    if k in myclass :
                        myclass[k].append([p1,o1])
                    else:
                        myclass[k] = [[p1,o1]]
                else:
                    #print "Not in prefix", self.prefix, s1, p1, o1
                    #pass
                    others.append([s1, p1, o1])
            except Exception as e:
                print "Exception",e, self.prefix, s1, p1, o1
                others.append([s1, p1, o1])
                
        return [myclass, others]
    
