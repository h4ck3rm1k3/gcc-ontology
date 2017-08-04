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
    #print "trying to parse", filen, url
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

        with open(filen,'rb') as fp:
            soup = BeautifulSoup(fp,"lxml")
            dt = doctype(soup)
            if dt == '' :
                g.load(filen)                     
            else:
                print "Found html",url,"TITLE",soup.title,"DT=",dt, "in file: ", filen
                
        #g.load(raw)
        #g.serialize(ttl, format="turtle")
    else :
        #print "mime",mt, "mt",raw
        pass
    
    
class Ontology:
    def __init__(self, url, prefix=None, _format='guess'):
        self.base=Namespace( url)
        self.prefix=prefix
        self.namespace_manager=None
        self.path = ""
        self._format = _format
        self.import_path=""
        
    def set_path(self,path):
        self.path=path
        
    def bind_this(self, namespace_manager):
        namespace_manager.bind(self.prefix, self.base, override=False)
        self.namespace_manager=namespace_manager

    def qname(self,g,x):
        try :

            prefix, namespace, name = g.namespace_manager.compute_qname(x)
            # full : namespace
            #print prefix,name
            o1 = [prefix,name]
        except Exception as e:
            #print e
            o1 = [None,x]
        return o1
        
    def fetch(self, namespace_manager):
        # generate a class for this ontology
        g=rdflib.Graph(namespace_manager=namespace_manager)
        #print "generating for " + self.prefix
        #print "generating for base " + self.base             
        self.bind_this(namespace_manager)
        
        #print "path:",self.path
        ttl = self.path.replace('.py','.ttl')
        raw = self.path.replace('.py','.raw')
        ttl_path = Path(ttl)
        raw_path = Path(raw)
        if not ttl_path.exists() :
            print "ttl missing", ttl_path
            if  not raw_path.exists():
                print "raw missing", raw_path
                
                if 'http' not in self.base :
                    return
                try :
                    print "Fetching:" + self.base
                    #return
                    headers = {'accept': 'application/rdf+xml, application/xhtml+xml;q=0.3, text/xml;q=0.2, application/xml;q=0.2, text/html;q=0.3, text/plain;q=0.1, text/n3, text/rdf+n3;q=0.5, application/x-turtle;q=0.2, text/turtle;q=1'}
                    r = requests.get(self.base, timeout=10, headers=headers)
                    #if 'content-type' in r.headers:
                    #    rtype = r.headers['content-type']
                        
                    f = open(raw,"wb")
                    f.write(r.text)
                    f.close()

                    print "going to check",self._format,raw
                    
                    if self._format == 'guess':
                        try_parse(raw,self.base,g)
                    else:
                        g.load(raw,format=self._format)

                    #g.serialize(ttl, format="turtle")
                    print "writing", ttl
                    g.serialize(ttl, format="turtle")
                except Exception as e:
                    print "ERROR",e
            ###
            else:
                
                print "Parsed cache:" + self.base
                if self._format == 'guess':
                    print "read raw with guess", raw
                    try_parse(raw,self.base,g)
                else:
                    
                    print "read raw with format", raw, self._format
                    g.load(raw,format=self._format)
                    
                print "writing", ttl
                g.serialize(ttl, format="turtle")
        else:
            #try_parse(ttl,self.base,g)
        
            #print "reading existing ttl", ttl
            g.load(ttl,format="turtle")

            
        return g

    def resolve_prefix(self, g, libs, res):
        x = self.qname(g,res)
        prefix = x[0]
        url = x[1]
        if prefix is None:
            
            if str(res)== str(self.base):
                return [self.prefix,res,self]
            else:
                return [self.prefix,res,self]
            #print res
            #    print x
            #    raise Exception(res)
        lib = None            
        if prefix in libs :
            lib = libs[prefix]
        else:
            m = g.namespace_manager.store.namespace(prefix)
            print "g.namespace_manager.bind(\"{prefix}\",\"{url}\",True)  ".format(prefix=prefix,url=m)
            #raise Exception(prefix)

        return [prefix,url,lib]
            
    def extract_graph(self, g, l, libs):
        #os.path.dirname(os.path.abspath(__file__))
        myclass = {}
        others = []
        for s,p,o in g:

            #s1 = g.namespace_manager.qname(s)
            #p1 = g.namespace_manager.qname(p)

            o1 = self.resolve_prefix(g,libs,o)
            p1 = self.resolve_prefix(g,libs,p)
            s1 = self.resolve_prefix(g,libs,s)

            k = s1[1] # term of subject

            try :
                subject_prefix = s1[0]
                subject_url = s1[1]
                if subject_prefix== self.prefix:

                    if k in myclass :
                        myclass[k].append([p1,o1])
                    else:
                        myclass[k] = [[p1,o1]]
                
                elif str(subject_url)== str(self.base):
                    if k in myclass :
                        myclass[k].append([p1,o1])
                    else:
                        myclass[k] = [[p1,o1]]
                else:
                    #print "Not in prefix", self.prefix, s1, p1, o1
                    pass
                    #others.append([s1, p1, o1])
            except Exception as e:
                print "Exception",e, self.prefix, s1, p1, o1
                others.append([s1, p1, o1])
                
        return [myclass, others]
    
