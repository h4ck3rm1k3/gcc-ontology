#!/usr/bin/python
import sys
import pdb
sys.path.append("/home/mdupont/experiments/astunparse/lib/")
sys.path.append("/home/mdupont/experiments/rdflib")

import rdflib
from urlparse import urlparse
from path import Path
import sys
import importlib
sys.path.append('lib')
import inspect
import ast
import astunparse
import pprint

from ast import *

g = rdflib.Graph()

g2 = rdflib.Graph()

g3 = rdflib.Graph()

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


from rdflib.namespace import NamespaceManager
namespace_manager = NamespaceManager(g)

        #('xml', rdflib.term.URIRef(u'http://www.w3.org/XML/1998/namespace')),
        #('xsd', rdflib.term.URIRef(u'https://www.w3.org/2000/10/XMLSchema')),
        #OWL = Namespace('http://www.w3.org/2002/07/owl
        #XSD = Namespace(_XSD_PFX
seen = {}

# ('mime: ', Namespace(u'http://dbpedia.org/class/yago/'), '\t', 'text/rdf+n3')
# ('mime: ', Namespace(u'http://dbpedia.org/ontology/'), '\t', 'text/turtle')
# ('mime: ', Namespace(u'http://dbpedia.org/property/'), '\t', 'text/rdf+n3')
# ('mime: ', Namespace(u'http://www.w3.org/2001/sw/DataAccess/tests/test-dawg#'), '\t', 'text/n3; qs=0.89')
# ('mime: ', Namespace(u'http://www.w3.org/2001/sw/DataAccess/tests/test-manifest#'), '\t', 'text/n3; qs=0.89')
# ('mime: ', Namespace(u'http://www.w3.org/2001/vcard-rdf/3.0#'), '\t', 'application/rdf+xml; qs=0.9')
# ('mime: ', Namespace(u'http://www.geneontology.org/formats/oboInOwl#'), '\t', 'text/xml')
# ('mime: ', Namespace(u'http://www.w3.org/2000/10/swap/math#'), '\t', 'application/rdf+xml; qs=0.9')
# ('mime: ', Namespace(u'http://www.w3.org/2005/01/wf/flow#'), '\t', 'application/rdf+xml; qs=0.9')
# ('mime: ', Namespace(u'http://www.w3.org/ns/ldp#'), '\t', 'text/turtle')
# ('mime: ', Namespace(u'http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#'), '\t', 'text/html; charset=iso-8859-1')

# ('mime: ', Namespace(u'http://api.facebook.com/1.0/'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://api.friendfeed.com/2008/03'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://base.google.com/ns/1.0'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://digg.com/docs/diggrss/'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://gdata.youtube.com/schemas/2007'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://gmpg.org/xfn/11#'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://linkedgeodata.org/vocabulary#'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://lod.openlinksw.com/'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://musicbrainz.org/ns/mmd-1.0#'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://purl.oclc.org/net/rss_2.0/enc#'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://purl.org/captsolo/resume-rdf/0.2/base#'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://purl.org/captsolo/resume-rdf/0.2/cv#'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://purl.org/commons/record/mesh/'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://purl.org/obo/owl/GO#'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://purl.org/rss/1.0/modules/slash/'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://purl.uniprot.org/'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://rdf.freebase.com/ns/'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://rdfs.org/sioc/ns#'), '\t', 'application/rdf+xml')
# ('mime: ', Namespace(u'http://rdfs.org/sioc/types#'), '\t', 'application/rdf+xml')
# ('mime: ', Namespace(u'http://schemas.google.com/g/2005'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://search.yahoo.com/mrss/'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://umbel.org/umbel/ac/'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://umbel.org/umbel/sc/'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://web-semantics.org/ns/image-regions'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://wellformedweb.org/CommentAPI/'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.geonames.org/ontology#'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.openarchives.org/OAI/2.0/oai_dc/'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.opengis.net/def/function/geosparql/'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.opengis.net/def/rule/geosparql/'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.opengis.net/gml'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.opengis.net/ont/geosparql#'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.opengis.net/ont/gml#'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.opengis.net/ont/sf#'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.openlinksw.com/schemas/google-base#'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://www.openlinksw.com/schemas/hlisting/'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://www.openlinksw.com/schemas/ning#'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://www.openlinksw.com/schemas/twfy#'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://www.openlinksw.com/schemas/virtcxml#'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://www.openlinksw.com/schemas/virtrdf#'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://www.openlinksw.com/xsltext/'), '\t', 'text/html; charset=UTF-8')
# ('mime: ', Namespace(u'http://www.rdfabout.com/rdf/schema/uscensus/details/100pct/'), '\t', 'text/html')
# ('mime: ', Namespace(u'http://www.semanticdesktop.org/ontologies/nfo/#'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.w3.org/2003/12/exif/ns/'), '\t', 'text/html;charset=utf-8')
# ('mime: ', Namespace(u'http://www.w3.org/2004/07/xpath-functions'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.w3.org/2005/xpath-functions/#'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://www.w3.org/2006/vcard/ns#'), '\t', 'text/turtle; charset=utf-8')
# ('mime: ', Namespace(u'http://www.w3.org/TR/WD-xsl'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.w3.org/XSL/Transform/1.0'), '\t', 'text/html;charset=utf-8')
# ('mime: ', Namespace(u'http://www.xbrl.org/2003/instance'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://www.xbrl.org/2003/linkbase'), '\t', 'text/html; charset=iso-8859-1')
# ('mime: ', Namespace(u'http://wwww.hoovers.com/'), '\t', 'text/html; charset=utf-8')
# ('mime: ', Namespace(u'http://xbrlontology.com/ontology/finance/stock_market#'), '\t', 'text/html; charset=UTF-8')


def process (prefix,url):
    global g3
    if url not in seen :
        seen[url]=1
    else:
        return
    if 'http' not in url:
        return
    pa=urlparse(url)
    path = ["lib","gccont","ontologies"]
    modules = []
    #print url

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

    if pa.path != '' :
        parts = pa.path
    else:
        parts = 'ontology'
    #print "path",path, "parts",parts

    for x in parts.split("/"):
        x = x.replace('.','_')
        x = x.replace(':','_')
        x = x.replace('~','_')
        if x != '' :
            path.append(x)

            #print path
    path_obj = Path("/".join(path))
    
    #print ("pathobj",path_obj)
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

        if not step.exists():
            print "going to makedir Step",step, "for ", url
            #step.mkdir_p()
            #pdb.set_trace()
            raise Exception("no more")
        f = step + "/__init__.py"
        #print f
        if not f.exists():
            #print "exists"
            f = open(f,"w")
            f.write("#"+step)
            f.close()
    module = path_obj + ".py"
    
    if module.exists():
        #print "module exists: " + module
        import_path=module.replace("lib/","").replace("/",".").replace(".py","")
        ttl_path=import_path.replace(".py",".ttl")
        #print "Going to import",import_path,url
        import_module = importlib.import_module(import_path)

        #print "import:" + str(import_module)
        #print dir(import_module)
        #print import_module.__dict__.keys()
        #print import_module.ontology

        if 'ontology' in import_module.__dict__:
            obj= import_module.__dict__['ontology']

            #print obj.generate()
            obj.bind_this(namespace_manager)
            #print "set path", module
            obj.set_path(module)
            modules.append(obj)
            #.ontology.base
            #print(astunparse.dump(ast.parse(inspect.getsource(import_module))))        
        else:
            return

    else:
        prefix = str(prefix).replace('-','_')
        class_name = prefix.upper()
        print "module create:" + module, class_name
        ast = create_ont_module(class_name,prefix,url)        
        code = astunparse.unparse(ast)
        
        o = open (module,"w")
        o.write(code)
        o.close()

    for m in modules:
        #gc m.prefix, m.base
        #print
        x = m.generate(g)
        if x :
            obj.bind_this(g2.namespace_manager)
            obj.bind_this(g3.namespace_manager)
            g2.add((URL(m.base),URL("#module_path"),rdflib.Literal(m.path)))
            g2.add((URL(m.base),URL("#statement_count"),rdflib.Literal(len(x))))
            
        g3 += x
        #m.find_path()

        #g2 += x
        
        # if x :
        #     (my,other) = x
        #     for x in my :
        #         #print "object",x
        #         pass

        
        
def URL(x):
    return rdflib.term.URIRef(x)

plist = {
        "a": "http://www.w3.org/2005/Atom",
        "address": "http://schemas.talis.com/2005/address/schema#",
        "admin": "http://webns.net/mvcb/",
        "atom": "http://atomowl.org/ontologies/atomrdf#",
        "aws": "http://soap.amazon.com/",
    #"b3s": "http://b3s.openlinksw.com/", timeout
        "batch": "http://schemas.google.com/gdata/batch",
        "bibo": "http://purl.org/ontology/bibo/",
        "bif": "bif:",
        "bugzilla": "http://www.openlinksw.com/schemas/bugzilla#",
        "c": "http://www.w3.org/2002/12/cal/icaltzd#",
        #"category": "http://dbpedia.org/resource/Category:",
        "cb": "http://www.crunchbase.com/",
        "cc": "http://web.resource.org/cc/",
        "content": "http://purl.org/rss/1.0/modules/content/",
        "cv": "http://purl.org/captsolo/resume-rdf/0.2/cv#",
        "cvbase": "http://purl.org/captsolo/resume-rdf/0.2/base#",
        "dawgt": "http://www.w3.org/2001/sw/DataAccess/tests/test-dawg#",
        "dbpedia": "http://dbpedia.org/resource/",
        "dbpedia-owl": "http://dbpedia.org/ontology/",
        "dbpprop": "http://dbpedia.org/property/",
        "dc": "http://purl.org/dc/elements/1.1/",
        "dcterms": "http://purl.org/dc/terms/",
        "digg": "http://digg.com/docs/diggrss/",
    "ebay": "urn:ebay:apis:eBLBaseComponents",
    "enc": "http://purl.oclc.org/net/rss_2.0/enc#",
    "exif": "http://www.w3.org/2003/12/exif/ns/",
    "fb": "http://api.facebook.com/1.0/",
    "ff": "http://api.friendfeed.com/2008/03",
    "fn": "http://www.w3.org/2005/xpath-functions/#",
    "foaf": "http://xmlns.com/foaf/0.1/",
    "freebase": "http://rdf.freebase.com/ns/",
    "g": "http://base.google.com/ns/1.0",
    "gb": "http://www.openlinksw.com/schemas/google-base#",
    "gd": "http://schemas.google.com/g/2005",
    "geo": "http://www.w3.org/2003/01/geo/wgs84_pos#",
    "geonames": "http://www.geonames.org/ontology#",
    "georss": "http://www.georss.org/georss",
    "gml": "http://www.opengis.net/gml",
    "go": "http://purl.org/obo/owl/GO#",
    "gr": "http://purl.org/goodrelations/v1#",
                "grs": "http://www.georss.org/georss/",
                "hlisting": "http://www.openlinksw.com/schemas/hlisting/",
                "hoovers": "http://wwww.hoovers.com/",
                "hrev": "http://www.purl.org/stuff/hrev#",
                "ical": "http://www.w3.org/2002/12/cal/ical#",
                "ir": "http://web-semantics.org/ns/image-regions",
                "itunes": "http://www.itunes.com/DTDs/Podcast-1.0.dtd",
                "lgv": "http://linkedgeodata.org/ontology/",
                "link": "http://www.xbrl.org/2003/linkbase",
                "lod": "http://lod.openlinksw.com/",
                "math": "http://www.w3.org/2000/10/swap/math#",
                "media": "http://search.yahoo.com/mrss/",
                "mesh": "http://purl.org/commons/record/mesh/",
                "meta": "urn:oasis:names:tc:opendocument:xmlns:meta:1.0",
                "mf": "http://www.w3.org/2001/sw/DataAccess/tests/test-manifest#",
                "mmd": "http://musicbrainz.org/ns/mmd-1.0#",
                "mo": "http://purl.org/ontology/mo/",
                "mql": "http://www.freebase.com/",
                "nci": "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#",
                "nfo": "http://www.semanticdesktop.org/ontologies/nfo/#",
                "ng": "http://www.openlinksw.com/schemas/ning#",
                "nyt": "http://www.nytimes.com/",
                "oai": "http://www.openarchives.org/OAI/2.0/",
                "oai_dc": "http://www.openarchives.org/OAI/2.0/oai_dc/",
                "obo": "http://www.geneontology.org/formats/oboInOwl#",
                "office": "urn:oasis:names:tc:opendocument:xmlns:office:1.0",
                "ogc": "http://www.opengis.net/",
                "ogcgml": "http://www.opengis.net/ont/gml#",
                "ogcgs": "http://www.opengis.net/ont/geosparql#",
                "ogcgsf": "http://www.opengis.net/def/function/geosparql/",
                "ogcgsr": "http://www.opengis.net/def/rule/geosparql/",
                "ogcsf": "http://www.opengis.net/ont/sf#",
                "oo": "urn:oasis:names:tc:opendocument:xmlns:meta:1.0:",
                "openSearch": "http://a9.com/-/spec/opensearchrss/1.0/",
    #"opencyc": "http://sw.opencyc.org/2008/06/10/concept/",
                "opl": "http://www.openlinksw.com/schema/attribution#",
                "opl-gs": "http://www.openlinksw.com/schemas/getsatisfaction/",
                "opl-meetup": "http://www.openlinksw.com/schemas/meetup/",
                "opl-xbrl": "http://www.openlinksw.com/schemas/xbrl/",
                "oplweb": "http://www.openlinksw.com/schemas/oplweb#",
                "ore": "http://www.openarchives.org/ore/terms/",
                "owl": "http://www.w3.org/2002/07/owl#",
#                "product": "http://www.buy.com/rss/module/productV2/",
                "protseq": "http://purl.org/science/protein/bysequence/",
                "r": "http://backend.userland.com/rss2",
    #"radio": "http://www.radiopop.co.uk/",
                "rdf": "http://www.w3.org/1999/02/22-rdf-syntax-ns#",
                "rdfa": "http://www.w3.org/ns/rdfa#",
                "rdfdf": "http://www.openlinksw.com/virtrdf-data-formats#",
                "rdfs": "http://www.w3.org/2000/01/rdf-schema#",
                "rev": "http://purl.org/stuff/rev#",
                "review": "http://www.purl.org/stuff/rev#",
                "rss": "http://purl.org/rss/1.0/",
                "sc": "http://purl.org/science/owl/sciencecommons/",
                "scovo": "http://purl.org/NET/scovo#",
                "sd": "http://www.w3.org/ns/sparql-service-description#",
                "sf": "urn:sobject.enterprise.soap.sforce.com",
                "sioc": "http://rdfs.org/sioc/ns#",
                "sioct": "http://rdfs.org/sioc/types#",
                "skos": "http://www.w3.org/2004/02/skos/core#",
                "slash": "http://purl.org/rss/1.0/modules/slash/",
                "sql": "sql:",
                "stock": "http://xbrlontology.com/ontology/finance/stock_market#",
                "twfy": "http://www.openlinksw.com/schemas/twfy#",
                "umbel": "http://umbel.org/umbel#",
                "umbel-ac": "http://umbel.org/umbel/ac/",
                "umbel-sc": "http://umbel.org/umbel/sc/",
                "uniprot": "http://purl.uniprot.org/",
                "units": "http://dbpedia.org/units/",
                "usc": "http://www.rdfabout.com/rdf/schema/uscensus/details/100pct/",
                "v": "http://www.openlinksw.com/xsltext/",
                "vcard": "http://www.w3.org/2001/vcard-rdf/3.0#",
                "vcard2006": "http://www.w3.org/2006/vcard/ns#",
                "vi": "http://www.openlinksw.com/virtuoso/xslt/",
                "virt": "http://www.openlinksw.com/virtuoso/xslt",
                "virtcxml": "http://www.openlinksw.com/schemas/virtcxml#",
                "virtrdf": "http://www.openlinksw.com/schemas/virtrdf#",
                "void": "http://rdfs.org/ns/void#",
                "wb": "http://www.worldbank.org/",
                "wdrs": "http://www.w3.org/2007/05/powder-s#",
                "wf": "http://www.w3.org/2005/01/wf/flow#",
                "wfw": "http://wellformedweb.org/CommentAPI/",
                "wikicompany": "http://dbpedia.openlinksw.com/wikicompany/",
                "xf": "http://www.w3.org/2004/07/xpath-functions",
                "xfn": "http://gmpg.org/xfn/11#",
                "xhtml": "http://www.w3.org/1999/xhtml",
                "xhv": "http://www.w3.org/1999/xhtml/vocab#",
                "xi": "http://www.xbrl.org/2003/instance",
                "xml": "http://www.w3.org/XML/1998/namespace",
                "xn": "http://www.ning.com/atom/1.0",
                "xsd": "http://www.w3.org/2001/XMLSchema#",
                "xsl10": "http://www.w3.org/XSL/Transform/1.0",
                "xsl1999": "http://www.w3.org/1999/XSL/Transform",
                "xslwd": "http://www.w3.org/TR/WD-xsl",
                "y": "urn:yahoo:maps",
                "yago": "http://dbpedia.org/class/yago/",
                "yago-res": "http://mpii.de/yago/resource/",
                "yt": "http://gdata.youtube.com/schemas/2007",
    #"zem": "http://s.zemanta.com/ns#"
            }

# skip list
for p in [
        ('ns657', rdflib.term.URIRef(u'https://gitpay.org/melvincarvalho#')) ,
        ('ns635', rdflib.term.URIRef(u'https://melvin.solid.live/Preferences/')) ,
        ('ns666', rdflib.term.URIRef(u'https://melvin.rww.io/cal/')) ,
        ('ns623', rdflib.term.URIRef(u'https://amarha.rww.io/profile/card#')) ,
        ('ns628', rdflib.term.URIRef(u'https://public.rww.io/profile/card#')) ,
('ns629', rdflib.term.URIRef(u'http://melvin.rww.io/apps/findme/')) ,

        (u'solid', rdflib.term.URIRef(u'http://www.w3.org/ns/solid/terms#')) ,
        ('ns648', rdflib.term.URIRef(u'http://opentabs.data.fm/d/38/b7e3ceca9b8c1ba5a176103a2eab6530a51c07/public/')) ,
        ('ns647', rdflib.term.URIRef(u'http://webr3.org/nathan#')) , # timeot
        ('ns659', rdflib.term.URIRef(u'https://silverbucket.rww.io/profile/card#')) ,
        ('ns626', rdflib.term.URIRef(u'https://silverbucket.net/#')) ,
                (u'ns6271', rdflib.term.URIRef(u'http://bit.ly/1')) ,
        (u'ns2010', rdflib.term.URIRef(u'http://sw.opencyc.org/concept/')) ,
        (u'ns3420', rdflib.term.URIRef(u'http://rdf.data-vocabulary.org/#')) ,

        ('ns442', rdflib.term.URIRef(u'http://soiland-reyes.com/stian/#')) ,
        ('ns520', rdflib.term.URIRef(u'http://uda.openlinksw.com/images/')) , # ssl error
        (u'ns477', rdflib.term.URIRef(u'http://qdos.com/people/tom.xrdf#')) ,
        (u'ns288', rdflib.term.URIRef(u'http://averdon.csail.mit.edu/foaf#')) , #timeout
        (u'ns155', rdflib.term.URIRef(u'http://www.openlinksw.com/DAV/data/turtle/cartridge_ontologies/attribution.ttl#')) ,
        ('ns120', rdflib.term.URIRef(u'http://www.openlinksw.com/about/id/entity/http/www.openlinksw.com/DAV/data/turtle/cartridge_ontologies/')) ,

        ('ns129', rdflib.term.URIRef(u'http://www.openlinksw.com/about/id/http/www.openlinksw.com/DAV/data/turtle/cartridge_ontologies/')) ,
        
        ('ns197', rdflib.term.URIRef(u'http://www.advogato.org/person/timbl/foaf.rdf#')) ,
        ('product', URL('http://www.buy.com/rss/module/productV2/')),
        ('wb', URL('http://www.worldbank.org/')),
        ('wfw', URL('http://wellformedweb.org/CommentAPI/')), 
        ('xsl1999', URL('http://www.w3.org/1999/XSL/Transform')),
        ('',URL('yurn:yahoo:maps')),        
        ('radio', URL('http://www.radiopop.co.uk/')),
        ('b3s', URL('http://b3s.openlinksw.com/')),
                (u'opencyc', rdflib.term.URIRef(u'http://sw.opencyc.org/2008/06/10/concept/')) ,
        ('zem', URL('http://s.zemanta.com/ns#')),
        (u'ns661', rdflib.term.URIRef(u'http://purl.org/')) ,
        (u'ns89', rdflib.term.URIRef(u'http://ies.jrc.ec.europa.eu/')) ,
        (u'schema', rdflib.term.URIRef(u'http://schemas.talis.com/2005/address/schema#')) ,
        (u'wot', rdflib.term.URIRef(u'http://xmlns.com/wot/0.1/')) ,

        (u'event', rdflib.term.URIRef(u'http://purl.org/NET/c4dm/event.owl#')) ,
        ('ns166', rdflib.term.URIRef(u'http://virtual.dicom.uninsubria.it/biblio/action.php?operazione=dettagli&id=346&tabella=')) ,
        ('ns85', rdflib.term.URIRef(u'http://purl.org/ontology/mo/')) ,
        (u'air', rdflib.term.URIRef(u'http://www.megginson.com/exp/ns/airports#')) ,
        (u'identifiers', rdflib.term.URIRef(u'http://id.loc.gov/vocabulary/identifiers/')) ,
        (u'ri', rdflib.term.URIRef(u'http://id.loc.gov/ontologies/RecordInfo#')) ,
        (u'ns232', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Michael%20')),
        (u'ns2321', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Michael%20')),
        (u'ns2322', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Digital%20Enterprise%20Research%20Institute%2C%20NUI%20')),
        (u'ns233', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Digital%20Enterprise%20Research%20Institute%2C%20NUI%20')),
        (u'ns2421', rdflib.term.URIRef(u'mailto:jun.zhao@')),

        ## added
        ####
('derivocab', rdflib.term.URIRef(u'http://vocab.deri.ie/')),
        ('doap', rdflib.term.URIRef(u'http://usefulinc.com/ns/doap#')),
        ('gcc', rdflib.term.URIRef(u'https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#')),
        ('ns105', rdflib.term.URIRef(u'http://id.loc.gov/vocabulary/organizations/')) , 
        ('ns11', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        ('ns119', rdflib.term.URIRef(u'http://www.linkedin.com/pub/4/651/')) ,
        ('ns12', rdflib.term.URIRef(u'http://lcweb.loc.gov/standards/iso639-2/')),
        ('ns126', rdflib.term.URIRef(u'http://www.facebook.com/')) ,
        ('ns13', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        ('ns14', rdflib.term.URIRef(u'http://www.iso.org/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/')),
        ('ns148', rdflib.term.URIRef(u'http://www.w3.org/TR/powder-formal/#')) ,
        ('ns148', rdflib.term.URIRef(u'http://www.w3.org/TR/powder-formal/#')) ,
        ('ns149', rdflib.term.URIRef(u'http://www.w3.org/TR/powder-dr/#')) ,
        ('ns15', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        ('ns17', rdflib.term.URIRef(u'http://lcweb.loc.gov/catdir/cpso/lcco/')),
        ('ns2', rdflib.term.URIRef(u'application/rdf+')),
        ('ns21', rdflib.term.URIRef(u'http://sw-app.org/')),
        ('ns24', rdflib.term.URIRef(u'mailto:jun.zhao@')),
        ('ns26', rdflib.term.URIRef(u'mailto:richard.cyganiak@')),
        ('ns27', rdflib.term.URIRef(u'mailto:Keith.Alexander@')),
        ('ns28', rdflib.term.URIRef(u'http://')),
        ('ns29', rdflib.term.URIRef(u'mailto:michael.hausenblas@')),
        ('ns3', rdflib.term.URIRef(u'mailto:edd@')),
        ('ns30', rdflib.term.URIRef(u'http://sw-app.org/')),
        ('ns31', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        ('ns33', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        ('ns34', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        ('ns35', rdflib.term.URIRef(u'http://www.w3.org/TR/rdf11-concepts/#')),
        ('ns4', rdflib.term.URIRef(u'http://xmlns.com/wordnet/1.6/')),
        ('ns8', rdflib.term.URIRef(u'http://dublincore.org/usage/terms/history/#')),
        ('ns86', rdflib.term.URIRef(u'http://purl.org/ontology/mo/')) ,
        ('ns9', rdflib.term.URIRef(u'http://www.ietf.org/rfc/')),
        ('rdf', rdflib.term.URIRef(u'http://www.w3.org/1999/02/22-rdf-syntax-ns#')),
        ('rdfs', rdflib.term.URIRef(u'http://www.w3.org/2000/01/rdf-schema#')),
        ('skos', rdflib.term.URIRef(u'http://www.w3.org/2004/02/skos/core#')),
        ('vann', rdflib.term.URIRef(u'http://purl.org/vocab/vann/')),
        ('void', rdflib.term.URIRef(u'http://rdfs.org/ns/void#')),
        ('xml', rdflib.term.URIRef(u'http://www.w3.org/XML/1998/namespace')),
        ('xsd', rdflib.term.URIRef(u'http://www.w3.org/2001/XMLSchema#')),
        ('xsd', rdflib.term.URIRef(u'http://www.w3.org/2001/XMLSchema#')),
        (u'dc', rdflib.term.URIRef(u'http://purl.org/dc/elements/1.1/')),
        (u'dct', rdflib.term.URIRef(u'http://purl.org/dc/terms/')),
        (u'ns1261', rdflib.term.URIRef(u'http://www.facebook.com/')) ,
        (u'ns14811', rdflib.term.URIRef(u'http://www.w3.org/TR/powder-formal/#')) ,
        (u'ns1491', rdflib.term.URIRef(u'http://www.w3.org/TR/powder-dr/#')) ,
        (u'ns1932', rdflib.term.URIRef(u'http://vocab.deri.ie/')),
        (u'ns201', rdflib.term.URIRef(u'http://vocab.deri.ie/')),
        (u'ns202', rdflib.term.URIRef(u'mailto:michael.hausenblas@')),

        (u'ns771', rdflib.term.URIRef(u'org/w3/ns/lat/')),

        (u'ns801', rdflib.term.URIRef(u'adms:')),


        (u'ri', rdflib.term.URIRef(u'http://id.loc.gov/ontologies/RecordInfo#')) ,
       ]:
    prefix=p[0]
    url = p[1]
    if url not in seen :
        seen[url]=1
        

        
for k in plist:
    v = plist[k]
    #print "check", k, v
    process(k,URL(v))
#good list
for p in [
        (u'owl', rdflib.term.URIRef(u'http://www.w3.org/2002/07/owl#')),
        ('a', URL('http://www.w3.org/2005/Atom')),
        #('address', URL('http://schemas.talis.com/2005/address/schema#')),
        ('admin', URL('http://webns.net/mvcb/')),
        ('atom', URL('http://atomowl.org/ontologies/atomrdf#')),
        ('aws', URL('http://soap.amazon.com/')),

        ('batch', URL('http://schemas.google.com/gdata/batch')),
        ('bibo', URL('http://purl.org/ontology/bibo/')),
        ('bugzilla', URL('http://www.openlinksw.com/schemas/bugzilla#')),
        ('c', URL('http://www.w3.org/2002/12/cal/icaltzd#')),
        ('category', URL('http://dbpedia.org/resource/Category:')),
        ('cb', URL('http://www.crunchbase.com/')),
        ('cc', URL('http://web.resource.org/cc/')),
        ('content', URL('http://purl.org/rss/1.0/modules/content/')),
        ('cv', URL('http://purl.org/captsolo/resume-rdf/0.2/cv#')),
        ('cvbase', URL('http://purl.org/captsolo/resume-rdf/0.2/base#')),
        ('dawgt', URL('http://www.w3.org/2001/sw/DataAccess/tests/test-dawg#')),
        ('dbpedia', URL('http://dbpedia.org/resource/')),
        ('dbpedia-owl', URL('http://dbpedia.org/ontology/')),
        ('dbpprop', URL('http://dbpedia.org/property/')),
        ('dc', URL('http://purl.org/dc/elements/1.1/')),
        ('dcterms', URL('http://purl.org/dc/terms/')),
        ('digg', URL('http://digg.com/docs/diggrss/')),
        ('enc', URL('http://purl.oclc.org/net/rss_2.0/enc#')),
        ('exif', URL('http://www.w3.org/2003/12/exif/ns/')),
        ('fb', URL('http://api.facebook.com/1.0/')),
        ('fbase', URL('http://rdf.freebase.com/ns/')),
        ('ff', URL('http://api.friendfeed.com/2008/03')),
        ('fn', URL('http://www.w3.org/2005/xpath-functions/#')),
        ('foaf', URL('http://xmlns.com/foaf/0.1/')),
        ('g', URL('http://base.google.com/ns/1.0')),
        ('gb', URL('http://www.openlinksw.com/schemas/google-base#')),
        ('gd', URL('http://schemas.google.com/g/2005')),
        ('geo', URL('http://www.w3.org/2003/01/geo/wgs84_pos#')),
        ('geonames', URL('http://www.geonames.org/ontology#')),
        ('georss', URL('http://www.georss.org/georss')),
        ('gml', URL('http://www.opengis.net/gml')),
        ('go', URL('http://purl.org/obo/owl/GO#')),
        ('grs', URL('http://www.georss.org/georss/')),
        ('hlisting', URL('http://www.openlinksw.com/schemas/hlisting/')),
        ('hoovers', URL('http://wwww.hoovers.com/')),
        ('hrev', URL('http://www.purl.org/stuff/hrev#')),
        ('ical', URL('http://www.w3.org/2002/12/cal/ical#')),
        ('ir', URL('http://web-semantics.org/ns/image-regions')),
        ('itunes', URL('http://www.itunes.com/DTDs/Podcast-1.0.dtd')),
        ('ldp', URL('http://www.w3.org/ns/ldp#')),
        ('lgv', URL('http://linkedgeodata.org/vocabulary#')),
        ('link', URL('http://www.xbrl.org/2003/linkbase')),
        ('lod', URL('http://lod.openlinksw.com/')),
        ('math', URL('http://www.w3.org/2000/10/swap/math#')),
        ('media', URL('http://search.yahoo.com/mrss/')),
        ('mesh', URL('http://purl.org/commons/record/mesh/')),
         #('metaurn:oasis:names:tc:opendocument:xmlns:meta:1.0')),
        ('mf', URL('http://www.w3.org/2001/sw/DataAccess/tests/test-manifest#')),
        ('mmd', URL('http://musicbrainz.org/ns/mmd-1.0#')),
        ('mo', URL('http://purl.org/ontology/mo/')),
        ('mql', URL('http://www.freebase.com/')),
        ('nci', URL('http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#')),
        ('nfo', URL('http://www.semanticdesktop.org/ontologies/nfo/#')),
        ('ng', URL('http://www.openlinksw.com/schemas/ning#')),
        ('nyt', URL('http://www.nytimes.com/')),
        ('oai', URL('http://www.openarchives.org/OAI/2.0/')),
        #('oai_dc', URL('http://www.openarchives.org/OAI/2.0/oai_dc/')),  xml schema
        ('obo', URL('http://www.geneontology.org/formats/oboInOwl#')),
#        ('officeurn:oasis:names:tc:opendocument:xmlns:office:1.0')),
        ('ogc', URL('http://www.opengis.net/')),
        ('ogcgml', URL('http://www.opengis.net/ont/gml#')),
        ('ogcgs', URL('http://www.opengis.net/ont/geosparql#')),
        ('ogcgsf', URL('http://www.opengis.net/def/function/geosparql/')),
        ('ogcgsr', URL('http://www.opengis.net/def/rule/geosparql/')),
        ('ogcsf', URL('http://www.opengis.net/ont/sf#'),
#        ('oourn:oasis:names:tc:opendocument:xmlns:meta:1.0:')),
        ('openSearch', URL('http://a9.com/-/spec/opensearchrss/1.0/')),
        ('opl', URL('http://www.openlinksw.com/schema/attribution#')),
        ('opl-gs', URL('http://www.openlinksw.com/schemas/getsatisfaction/')),
        ('opl-meetup', URL('http://www.openlinksw.com/schemas/meetup/')),
        ('opl-xbrl', URL('http://www.openlinksw.com/schemas/xbrl/')),
        ('oplweb', URL('http://www.openlinksw.com/schemas/oplweb#')),
        ('ore', URL('http://www.openarchives.org/ore/terms/')),
        ('owl', URL('http://www.w3.org/2002/07/owl#')),

        ('protseq', URL('http://purl.org/science/protein/bysequence/')),
        ('r', URL('http://backend.userland.com/rss2')),

        ('rdf', URL('http://www.w3.org/1999/02/22-rdf-syntax-ns#')),
        ('rdfa', URL('http://www.w3.org/ns/rdfa#')),
        ('rdfdf', URL('http://www.openlinksw.com/virtrdf-data-formats#')),
        ('rdfs', URL('http://www.w3.org/2000/01/rdf-schema#')),
        ('rev', URL('http://purl.org/stuff/rev#')),
        ('review', URL('http://www.purl.org/stuff/rev#')),
        ('rss', URL('http://purl.org/rss/1.0/')),
        ('sc', URL('http://purl.org/science/owl/sciencecommons/')),
        ('scovo', URL('http://purl.org/NET/scovo#')),
        ('sd', URL('http://www.w3.org/ns/sparql-service-description#')),
        ('sfurn:sobject.enterprise.soap.sforce.com')),
        ('sioc', URL('http://rdfs.org/sioc/ns#')),
        ('sioct', URL('http://rdfs.org/sioc/types#')),
        ('skos', URL('http://www.w3.org/2004/02/skos/core#')),
        ('slash', URL('http://purl.org/rss/1.0/modules/slash/')),
        ('stock', URL('http://xbrlontology.com/ontology/finance/stock_market#')),
        ('twfy', URL('http://www.openlinksw.com/schemas/twfy#')),
        ('umbel', URL('http://umbel.org/umbel#')),
        ('umbel-ac', URL('http://umbel.org/umbel/ac/')),
        ('umbel-sc', URL('http://umbel.org/umbel/sc/')),
        ('uniprot', URL('http://purl.uniprot.org/')),
        ('usc', URL('http://www.rdfabout.com/rdf/schema/uscensus/details/100pct/')),
        ('v', URL('http://www.openlinksw.com/xsltext/')),
        ('vcard', URL('http://www.w3.org/2001/vcard-rdf/3.0#')),
        ('vcard2006', URL('http://www.w3.org/2006/vcard/ns#')),
        ('vi', URL('http://www.openlinksw.com/virtuoso/xslt/')),
        ('virt', URL('http://www.openlinksw.com/virtuoso/xslt')),
        ('virtcxml', URL('http://www.openlinksw.com/schemas/virtcxml#')),
        ('virtrdf', URL('http://www.openlinksw.com/schemas/virtrdf#')),
        ('void', URL('http://rdfs.org/ns/void#')),

        ('wf', URL('http://www.w3.org/2005/01/wf/flow#')),
        
        ('xf', URL('http://www.w3.org/2004/07/xpath-functions')),
        ('xfn', URL('http://gmpg.org/xfn/11#')),
        ('xhtml', URL('http://www.w3.org/1999/xhtml')),
        ('xhv', URL('http://www.w3.org/1999/xhtml/vocab#')),
        ('xi', URL('http://www.xbrl.org/2003/instance')),
        ('xml', URL('http://www.w3.org/XML/1998/namespace')),
        ('xn', URL('http://www.ning.com/atom/1.0')),
        ('xsd', URL('http://www.w3.org/2001/XMLSchema#')),
        ('xsl10', URL('http://www.w3.org/XSL/Transform/1.0')),
        
        ('xslwd', URL('http://www.w3.org/TR/WD-xsl')),
        ('yago', URL('http://dbpedia.org/class/yago/')),
        ('yt', URL('http://gdata.youtube.com/schemas/2007')),

        ('doap', rdflib.term.URIRef(u'http://usefulinc.com/ns/doap#')),
                ('adms', rdflib.term.URIRef(u'http://www.w3.org/ns/adms#')),
        ('dc', rdflib.term.URIRef('http://purl.org/dc/elements/1.1/')),
        ('dct', rdflib.term.URIRef('http://purl.org/dc/terms/')),
        ('doap',rdflib.term.URIRef('http://usefulinc.com/ns/doap#')),
        ('foaf', rdflib.term.URIRef('http://xmlns.com/foaf/0.1/')),
        ('ns1', rdflib.term.URIRef(u'http://www.w3.org/2004/02/skos/')),
        ('ns1', rdflib.term.URIRef(u'http://www.w3.org/2004/02/skos/')),
        ('ns10', rdflib.term.URIRef(u'http://purl.org/dc/aboutdcmi#')),
        ('ns10', rdflib.term.URIRef(u'http://purl.org/dc/aboutdcmi#')),
        ('ns102', rdflib.term.URIRef(u'http://www.w3.org/2002/12/cal/')) ,
        ('ns103', rdflib.term.URIRef(u'http://esw.w3.org/topic/')) ,
        ('ns104', rdflib.term.URIRef(u'http://id.loc.gov/authorities/subjects/')) ,
        ('ns107', rdflib.term.URIRef(u'http://data.bnf.fr/ark:/12148/')) ,
        ('ns107', rdflib.term.URIRef(u'http://id.loc.gov/vocabulary/organizations/')) ,
        ('ns108', rdflib.term.URIRef(u'http://id.loc.gov/authorities/')) ,
        ('ns11', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        ('ns12', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        ('ns120', rdflib.term.URIRef(u'http://www.linkedin.com/in/')) ,
        ('ns126', rdflib.term.URIRef(u'http://bio.demokritos.gr/stamatakis/')) ,
        ('ns127', rdflib.term.URIRef(u'http://philarcher.org/images/')) ,
        ('ns128', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/foaf/elena.rdf#')) ,
        ('ns129', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/~andrea.perego/foaf/#')) ,
        ('ns13', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        ('ns138', rdflib.term.URIRef(u'http://dbpedia.org/resource/')) ,
        ('ns14', rdflib.term.URIRef(u'http://lcweb.loc.gov/standards/iso639-2/')),
        ('ns147', rdflib.term.URIRef(u'http://www.w3.org/2007/05/')) ,
        ('ns15', rdflib.term.URIRef(u'http://lcweb.loc.gov/catdir/cpso/lcco/')),
        ('ns150', rdflib.term.URIRef(u'http://www.w3.org/TR/xpath-functions/#')) ,
        ('ns157', rdflib.term.URIRef(u'http://id.loc.gov/authorities#')) ,
        ('ns16', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        ('ns16', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        ('ns163', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        ('ns167', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/?sec=')) ,
        ('ns168', rdflib.term.URIRef(u'http://www.sigmod.org/dblp/db/indices/a-tree/f/Ferrari:')) ,
        ('ns169', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/~elena.ferrari/')) ,
        ('ns17', rdflib.term.URIRef(u'http://www.iso.org/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/')),
        ('ns170', rdflib.term.URIRef(u'http://www.informatik.uni-trier.de/~ley/db/indices/a-tree/f/Ferrari:')) ,
        ('ns177', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/img/people/')) ,
        ('ns178', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/foaf/#')) ,
        ('ns179', rdflib.term.URIRef(u'http://www.uninsubria.it/pls/uninsubria/bd_rubrica.vis_nomi?id_session=&pwd_sessione=&matricola=')) ,
        ('ns18', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        ('ns180', rdflib.term.URIRef(u'http://purl.org/net/darcusb/info#')) ,
        ('ns186', rdflib.term.URIRef(u'http://www.w3.org/2008/05/')) ,
        ('ns19', rdflib.term.URIRef(u'http://vocab.deri.ie/')),
        ('ns2', rdflib.term.URIRef(u'http://xmlns.com/wordnet/1.6/')),
        ('ns20', rdflib.term.URIRef(u'http://vocab.deri.ie/void#')),
        ('ns21', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Michael%20')),
        ('ns22', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Department%20of%20Zoology%2C%20University%20of%20')),
        ('ns23', rdflib.term.URIRef(u'http://purl.org/adms/assettype/')),
        ('ns24', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        ('ns25', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Digital%20Enterprise%20Research%20Institute%2C%20NUI%20')),
        ('ns29', rdflib.term.URIRef(u'http://purl.org/adms/assettype/')),
        ('ns294', rdflib.term.URIRef(u'http://purl.org/adms/assettype/')),
        ('ns31', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        ('ns32', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        ('ns32', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        ('ns33', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        ('ns34', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        ('ns35', rdflib.term.URIRef(u'http://www.w3.org/TR/rdf11-concepts/#')),
        ('ns36', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-webarch-20041215/#')),
        ('ns37', rdflib.term.URIRef(u'http://www.w3.org/TR/1999/REC-xpath-19991116#')),
        ('ns38', rdflib.term.URIRef(u'http://purl.org/NET/erdf/')),
        ('ns39', rdflib.term.URIRef(u'http://www.w3.org/2003/g/')),
        ('ns4', rdflib.term.URIRef(u'application/rdf+')),
        ('ns40', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-rdf-concepts-20040210/#')),
        ('ns5', rdflib.term.URIRef(u'http://schema.org/')),
        ('ns5', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/contact#')),
        ('ns50', rdflib.term.URIRef(u'http://www.w3.org/2003/06/sw-vocab-status/')),
        ('ns53', rdflib.term.URIRef(u'http://www.w3.org/2002/12/cal/ical#')),
        ('ns54', rdflib.term.URIRef(u'http://purl.org/dc/')),
        ('ns55', rdflib.term.URIRef(u'http://id.loc.gov/authorities/sh98002267#')),
        ('ns56', rdflib.term.URIRef(u'http://id.loc.gov/authorities/sh96000740#')),
        ('ns58', rdflib.term.URIRef(u'http://purl.org/adms/interoperabilitylevel/')),
        ('ns59', rdflib.term.URIRef(u'http://purl.org/adms/representationtechnique/')),
        ('ns6', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        ('ns6', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        ('ns60', rdflib.term.URIRef(u'http://purl.org/adms/licencetype/')),
        ('ns64', rdflib.term.URIRef(u'http://purl.org/adms/publishertype/')),
#        ('ns65', rdflib.term.URIRef(u'http://purl.org/')),
        ('ns66', rdflib.term.URIRef(u'https://joinup.ec.europa.eu/elibrary/document/')),
        ('ns67', rdflib.term.URIRef(u'https://joinup.ec.europa.eu/category/licence/')),
        ('ns68', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/')),
        ('ns69', rdflib.term.URIRef(u'http://www.w3.org/People/Berners-Lee/card#')),
        ('ns7', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/contact#')),
        ('ns70', rdflib.term.URIRef(u'http://www.w3.org/2001/sw/WebOnt/')),
        ('ns73', rdflib.term.URIRef(u'http://www.w3.org/2001/tag/ilist#')),
        ('ns74', rdflib.term.URIRef(u'http://lists.w3.org/Archives/Public/www-webont-wg/2001Nov/0006.')),
        ('ns75', rdflib.term.URIRef(u'http://www.w3.org/2001/sw/Europe/200303/geo/')),
        ('ns76', rdflib.term.URIRef(u'http://www.w3.org/1999/10/')),
        ('ns77', rdflib.term.URIRef(u'lat/')),
        ('ns78', rdflib.term.URIRef(u'http://lov.okfn.org/vocommons/voaf/v2.3/voaf_v2.3.rdf')), # http://labs.mondeca.com/vocab/voaf#
        ('ns78', rdflib.term.URIRef(u'http://www.w3.org/wiki/WebSchemas/SchemaDotOrgSources#')) ,
        ('ns79', rdflib.term.URIRef(u'http://www.w3.org/ns/')),
        ('ns79', rdflib.term.URIRef(u'https://www.w3.org/wiki/WebSchemas/SchemaDotOrgSources#')) ,
        ('ns8', rdflib.term.URIRef(u'http://dublincore.org/usage/terms/history/#')),
        ('ns80', rdflib.term.URIRef(u'http://andrea-perego.name/foaf/#')),
        ('ns80', rdflib.term.URIRef(u'http://www.wikidata.org/entity/')) ,
        ('ns83', rdflib.term.URIRef(u'adms:')),
        ('ns83', rdflib.term.URIRef(u'http://purl.org/ontology/bibo/')) ,
        #('ns84', rdflib.term.URIRef(u'http://ies.jrc.ec.europa.eu/')),
        ('ns84', rdflib.term.URIRef(u'http://www.w3.org/ns/regorg#')) ,
        ('ns85', rdflib.term.URIRef(u'W3C/')),
        ('ns86', rdflib.term.URIRef(u'http://www.w3.org/TR/2013/NOTE-vocab-adms-20130528/')),
        ('ns87', rdflib.term.URIRef(u'http://www.w3.org/People/all#')),
        ('ns88', rdflib.term.URIRef(u'http://philarcher.org/foaf.rdf#')),
        ('ns89', rdflib.term.URIRef(u'http://www.w3.org/')),
        ('ns9', rdflib.term.URIRef(u'http://www.ietf.org/rfc/')),
        ('ns90', rdflib.term.URIRef(u'http://makxdekkers.com/makxdekkers.rdf#')),
        ('owl', rdflib.term.URIRef(u'http://www.w3.org/2002/07/owl#')),
        ('rddlpurposed', rdflib.term.URIRef(u'http://www.rddl.org/purposes#')),
        ('rdf', rdflib.term.URIRef(u'http://www.w3.org/1999/02/22-rdf-syntax-ns#')),
        ('rdf', rdflib.term.URIRef(u'http://www.w3.org/1999/02/22-rdf-syntax-ns#')),
        ('rdfs', rdflib.term.URIRef(u'http://www.w3.org/2000/01/rdf-schema#')),
        ('rdfs', rdflib.term.URIRef(u'http://www.w3.org/2000/01/rdf-schema#')),
        ('schemaorg', rdflib.term.URIRef(u'http://schema.org/version/3.2/schema.rdf')),
        ('skos', rdflib.term.URIRef(u'http://www.w3.org/2004/02/skos/core#')),
        ('skos', rdflib.term.URIRef(u'http://www.w3.org/2004/02/skos/core#')),
        ('void', rdflib.term.URIRef('http://rdfs.org/ns/void#')),        
        ('void', rdflib.term.URIRef(u'http://rdfs.org/ns/void#')),
        ('void2', rdflib.term.URIRef(u'http://vocab.deri.ie/void#')),
        ('xml', rdflib.term.URIRef(u'http://www.w3.org/XML/1998/namespace')),
        ('xsd', rdflib.term.URIRef(u'http://www.w3.org/2001/XMLSchema#')),
        (u'admin', rdflib.term.URIRef(u'http://webns.net/mvcb/')),
        (u'adms', rdflib.term.URIRef(u'http://www.w3.org/ns/adms#')),
        (u'air', rdflib.term.URIRef(u'http://www.megginson.com/exp/ns/airports#')) ,
        (u'cc', rdflib.term.URIRef(u'http://creativecommons.org/ns#')),
        (u'cs', rdflib.term.URIRef(u'http://purl.org/vocab/changeset/schema#')) ,
        (u'dc', rdflib.term.URIRef(u'http://purl.org/dc/elements/1.1/')),
        (u'dcam', rdflib.term.URIRef(u'http://purl.org/dc/dcam/')),
        (u'dcam', rdflib.term.URIRef(u'http://purl.org/dc/dcam/')),
        (u'dcat', rdflib.term.URIRef(u'http://www.w3.org/ns/dcat#')),
        (u'dct', rdflib.term.URIRef(u'http://purl.org/dc/terms/')),
        (u'default1', rdflib.term.URIRef(u'http://www.w3.org/2003/06/sw-vocab-status/ns#')),
        (u'default2', rdflib.term.URIRef(u'http://www.w3.org/2000/01/rdf-schema#')),
        (u'default3', rdflib.term.URIRef(u'http://www.semanticweb.org/owl/owlapi/turtle#')),
        (u'default4', rdflib.term.URIRef(u'http://www.w3.org/1999/xhtml')),
        (u'default5', rdflib.term.URIRef(u'http://www.w3.org/ns/adms#')),
        (u'degrees', rdflib.term.URIRef(u'http://purl.org/ontology/bibo/degrees/')) ,
        (u'doc', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/doc#')),
        (u'foaf', rdflib.term.URIRef(u'http://xmlns.com/foaf/0.1/')),
        (u'foaf', rdflib.term.URIRef(u'http://xmlns.com/foaf/0.1/')),
        (u'grddl', rdflib.term.URIRef(u'http://www.w3.org/2003/g/data-view#')),
        (u'grddl', rdflib.term.URIRef(u'http://www.w3.org/2003/g/data-view#')),
        (u'identifiers', rdflib.term.URIRef(u'http://id.loc.gov/vocabulary/identifiers/')) ,
        (u'madsrdf', rdflib.term.URIRef(u'http://www.loc.gov/mads/rdf/v1#')) ,
        (u'ns101', rdflib.term.URIRef(u'http://www.ietf.org/rfc/')),
        (u'ns1011', rdflib.term.URIRef(u'http://purl.org/dc/aboutdcmi#')),
        (u'ns1012', rdflib.term.URIRef(u'http://www.ietf.org/rfc/')),
        (u'ns1051', rdflib.term.URIRef(u'http://id.loc.gov/vocabulary/organizations/')) ,
        (u'ns1061', rdflib.term.URIRef(u'http://id.loc.gov/authorities/')) ,
        (u'ns10711', rdflib.term.URIRef(u'http://data.bnf.fr/ark:/12148/')) ,
        (u'ns1082', rdflib.term.URIRef(u'http://data.bnf.fr/ark:/12148/')) ,
        (u'ns1093', rdflib.term.URIRef(u'http://id.loc.gov/authorities/')) ,
        (u'ns1094', rdflib.term.URIRef(u'http://id.loc.gov/vocabulary/organizations/')) ,
        (u'ns111', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        (u'ns112', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        (u'ns113', rdflib.term.URIRef(u'http://www.iso.org/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/')),
        (u'ns114', rdflib.term.URIRef(u'http://lcweb.loc.gov/catdir/cpso/lcco/')),
        (u'ns115', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        (u'ns1191', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/foaf/elena.rdf#')) ,
        (u'ns121', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        (u'ns1211', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        (u'ns1212', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        (u'ns122', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        (u'ns1221', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        (u'ns1222', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        (u'ns123', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        (u'ns1231', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        (u'ns1232', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        (u'ns124', rdflib.term.URIRef(u'http://www.iso.org/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/')),
        (u'ns1241', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        (u'ns12611', rdflib.term.URIRef(u'http://www.facebook.com/')) ,
        (u'ns1271', rdflib.term.URIRef(u'http://www.linkedin.com/pub/4/651/')) ,
        (u'ns1281', rdflib.term.URIRef(u'http://bio.demokritos.gr/stamatakis/')) ,
        (u'ns131', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        (u'ns1311', rdflib.term.URIRef(u'http://lcweb.loc.gov/standards/iso639-2/')),
        (u'ns13111', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        (u'ns132', rdflib.term.URIRef(u'http://lcweb.loc.gov/standards/iso639-2/')),
        (u'ns133', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        (u'ns1351', rdflib.term.URIRef(u'http://philarcher.org/images/')) ,
        (u'ns141', rdflib.term.URIRef(u'http://www.iso.org/iso/en/prods-services/iso3166ma/02iso-3166-code-lists/')),
        (u'ns142', rdflib.term.URIRef(u'http://lcweb.loc.gov/catdir/cpso/lcco/')),
        (u'ns143', rdflib.term.URIRef(u'http://lcweb.loc.gov/standards/iso639-2/')),
        (u'ns150', rdflib.term.URIRef(u'http://www.w3.org/TR/powder-formal/#')) ,
        (u'ns151', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        (u'ns1511', rdflib.term.URIRef(u'http://lcweb.loc.gov/catdir/cpso/lcco/')),
        (u'ns15111', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        (u'ns151111', rdflib.term.URIRef(u'http://lcweb.loc.gov/catdir/cpso/lcco/')),
        (u'ns152', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        (u'ns1521', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        (u'ns1601', rdflib.term.URIRef(u'http://virtual.dicom.uninsubria.it/biblio/action.php?operazione=dettagli&id=346&tabella=')) ,
        (u'ns161', rdflib.term.URIRef(u'http://lcweb.loc.gov/standards/iso639-2/')),
        (u'ns162', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        (u'ns1631', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        (u'ns164', rdflib.term.URIRef(u'http://purl.org/dc/dcmitype/')),
        (u'ns1661', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/foaf/#')) ,
        (u'ns1671', rdflib.term.URIRef(u'http://www.informatik.uni-trier.de/~ley/db/indices/a-tree/f/Ferrari:')) ,
        (u'ns1701', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/?sec=')) ,
        (u'ns171', rdflib.term.URIRef(u'http://www.getty.edu/research/tools/vocabulary/tgn/')),
        (u'ns172', rdflib.term.URIRef(u'http://www.w3.org/TR/')),
        (u'ns173', rdflib.term.URIRef(u'http://lcweb.loc.gov/standards/iso639-2/')),
        (u'ns174', rdflib.term.URIRef(u'http://www.nlm.nih.gov/mesh/')),
        (u'ns1761', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/dawsec/img/people/')) ,
        (u'ns1771', rdflib.term.URIRef(u'http://www.dicom.uninsubria.it/~elena.ferrari/')) ,
        (u'ns1781', rdflib.term.URIRef(u'http://www.uninsubria.it/pls/uninsubria/bd_rubrica.vis_nomi?id_session=&pwd_sessione=&matricola=')) ,
        (u'ns181', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Department%20of%20Zoology%2C%20University%20of%20')),
        (u'ns182', rdflib.term.URIRef(u'http://vocab.deri.ie/void#')),
        (u'ns183', rdflib.term.URIRef(u'http://vocab.deri.ie/')),
        (u'ns191', rdflib.term.URIRef(u'http://vocab.deri.ie/void#')),
        (u'ns1911', rdflib.term.URIRef(u'http://vocab.deri.ie/void#')),
        (u'ns1912', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns192', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns1921', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns1922', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Department%20of%20Zoology%2C%20University%20of%20')),
        (u'ns193', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Department%20of%20Zoology%2C%20University%20of%20')),
        (u'ns1931', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Department%20of%20Zoology%2C%20University%20of%20')),
        (u'ns203', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Digital%20Enterprise%20Research%20Institute%2C%20NUI%20')),
        (u'ns204', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Michael%20')),
        (u'ns211', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Digital%20Enterprise%20Research%20Institute%2C%20NUI%20')),
        (u'ns212', rdflib.term.URIRef(u'http://xmlns.com/wordnet/1.6/')),
        (u'ns2121', rdflib.term.URIRef(u'http://xmlns.com/wordnet/1.6/')),
        (u'ns2122', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Michael%20')),
        (u'ns221', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Michael%20')),
        (u'ns222', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Digital%20Enterprise%20Research%20Institute%2C%20NUI%20')),
        (u'ns2221', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Digital%20Enterprise%20Research%20Institute%2C%20NUI%20')),
        (u'ns2222', rdflib.term.URIRef(u'http://vocab.deri.ie/')),
        (u'ns2241', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns241', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns242', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Department%20of%20Zoology%2C%20University%20of%20')),
        (u'ns24211', rdflib.term.URIRef(u'http://vocab.deri.ie/void#Department%20of%20Zoology%2C%20University%20of%20')),
        (u'ns262', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns2621', rdflib.term.URIRef(u'mailto:michael.hausenblas@')),
        (u'ns263', rdflib.term.URIRef(u'http://sw-app.org/')),
        (u'ns2631', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns264', rdflib.term.URIRef(u'mailto:jun.zhao@')),
        (u'ns2641', rdflib.term.URIRef(u'http://sw-app.org/')),
        (u'ns271', rdflib.term.URIRef(u'http://purl.org/adms/assettype/')),
        (u'ns272', rdflib.term.URIRef(u'mailto:richard.cyganiak@')),
        (u'ns273', rdflib.term.URIRef(u'mailto:Keith.Alexander@')),
        (u'ns274', rdflib.term.URIRef(u'http://sw-app.org/')),
        (u'ns281', rdflib.term.URIRef(u'http://')),
        (u'ns282', rdflib.term.URIRef(u'mailto:jun.zhao@')),
        (u'ns283', rdflib.term.URIRef(u'http://sw-app.org/')),
        (u'ns284', rdflib.term.URIRef(u'mailto:michael.hausenblas@')),
        (u'ns285', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns291', rdflib.term.URIRef(u'mailto:Keith.Alexander@')),
        (u'ns292', rdflib.term.URIRef(u'http://')),
        (u'ns2921', rdflib.term.URIRef(u'http://')),
        (u'ns2922', rdflib.term.URIRef(u'mailto:richard.cyganiak@')),
        (u'ns293', rdflib.term.URIRef(u'mailto:richard.cyganiak@')),
        (u'ns2931', rdflib.term.URIRef(u'mailto:richard.cyganiak@')),
        (u'ns2932', rdflib.term.URIRef(u'http://purl.org/adms/assettype/')),
        (u'ns301', rdflib.term.URIRef(u'mailto:michael.hausenblas@')),
        (u'ns302', rdflib.term.URIRef(u'http://purl.org/adms/assettype/')),
        (u'ns303', rdflib.term.URIRef(u'mailto:richard.cyganiak@')),
        (u'ns3031', rdflib.term.URIRef(u'http://')),
        (u'ns30311', rdflib.term.URIRef(u'mailto:richard.cyganiak@')),
        (u'ns304', rdflib.term.URIRef(u'http://')),
        (u'ns3041', rdflib.term.URIRef(u'http://')),
        (u'ns3042', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns305', rdflib.term.URIRef(u'http://purl.org/adms/status/')),
        (u'ns310', rdflib.term.URIRef(u'http://xmlns.com/wordnet/1.6/')),
        (u'ns311', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        (u'ns312', rdflib.term.URIRef(u'mailto:edd@')),
        (u'ns3121', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns31211', rdflib.term.URIRef(u'mailto:edd@')),
        (u'ns313', rdflib.term.URIRef(u'http://purl.org/adms/assettype/')),
        (u'ns3131', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns315', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns321', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns3211', rdflib.term.URIRef(u'http://sw-app.org/')),
        (u'ns32111', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns322', rdflib.term.URIRef(u'http://sw-app.org/')),
        (u'ns3221', rdflib.term.URIRef(u'http://sw-app.org/')),
        (u'ns3222', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        (u'ns323', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        (u'ns324', rdflib.term.URIRef(u'mailto:Keith.Alexander@')),
        (u'ns331', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        (u'ns3311', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns332', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns3321', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        (u'ns3322', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns333', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns3331', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns341', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns3411', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns34111', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns342', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns3421', rdflib.term.URIRef(u'http://www.w3.org/2002/07/')),
        (u'ns3422', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns343', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns3431', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns3432', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        (u'ns351', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns3511', rdflib.term.URIRef(u'http://www.w3.org/TR/rdf11-concepts/#')),
        (u'ns3512', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns352', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns3521', rdflib.term.URIRef(u'http://dev.w3.org/cvsweb/2009/owl-grddl/')),
        (u'ns3522', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns353', rdflib.term.URIRef(u'http://www.w3.org/TR/owl2-rdf-based-semantics/#')),
        (u'ns3531', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns361', rdflib.term.URIRef(u'http://www.w3.org/TR/1999/REC-xpath-19991116#')),
        (u'ns362', rdflib.term.URIRef(u'http://www.w3.org/2000/01/')),
        (u'ns363', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-rdf-concepts-20040210/#')),
        (u'ns364', rdflib.term.URIRef(u'http://www.w3.org/TR/rdf11-concepts/#')),
        (u'ns371', rdflib.term.URIRef(u'http://www.w3.org/2003/g/')),
        (u'ns3711', rdflib.term.URIRef(u'http://www.w3.org/TR/rdf11-concepts/#')),
        (u'ns37111', rdflib.term.URIRef(u'http://www.w3.org/2003/g/')),
        (u'ns372', rdflib.term.URIRef(u'http://www.w3.org/TR/rdf11-concepts/#')),
        (u'ns3721', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-webarch-20041215/#')),
        (u'ns37211', rdflib.term.URIRef(u'http://www.w3.org/TR/rdf11-concepts/#')),
        (u'ns373', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-webarch-20041215/#')),
        (u'ns381', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-webarch-20041215/#')),
        (u'ns382', rdflib.term.URIRef(u'http://www.w3.org/2003/g/')),
        (u'ns391', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-rdf-concepts-20040210/#')),
        (u'ns392', rdflib.term.URIRef(u'http://www.w3.org/TR/1999/REC-xpath-19991116#')),
        (u'ns3921', rdflib.term.URIRef(u'http://www.w3.org/2003/g/')),
        (u'ns393', rdflib.term.URIRef(u'http://purl.org/NET/erdf/')),
        (u'ns3931', rdflib.term.URIRef(u'http://www.w3.org/TR/1999/REC-xpath-19991116#')),
        (u'ns394', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-webarch-20041215/#')),
        (u'ns3941', rdflib.term.URIRef(u'http://purl.org/NET/erdf/')),
        (u'ns401', rdflib.term.URIRef(u'http://purl.org/NET/erdf/')),
        (u'ns402', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-rdf-concepts-20040210/#')),
        (u'ns403', rdflib.term.URIRef(u'http://www.w3.org/TR/1999/REC-xpath-19991116#')),
        (u'ns413', rdflib.term.URIRef(u'http://www.w3.org/2003/06/sw-vocab-status/')),
        (u'ns414', rdflib.term.URIRef(u'http://xmlns.com/wordnet/1.6/')),
        (u'ns491', rdflib.term.URIRef(u'http://www.w3.org/TR/1999/REC-xpath-19991116#')),
        (u'ns493', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-rdf-concepts-20040210/#')),
        (u'ns501', rdflib.term.URIRef(u'http://purl.org/NET/erdf/')),
        (u'ns502', rdflib.term.URIRef(u'http://www.w3.org/2003/06/sw-vocab-status/')),
        (u'ns503', rdflib.term.URIRef(u'http://www.w3.org/TR/2004/REC-webarch-20041215/#')),
        (u'ns51', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/contact#')),
        (u'ns52', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        (u'ns521', rdflib.term.URIRef(u'http://www.w3.org/2003/06/sw-vocab-status/')),
        (u'ns522', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        (u'ns531', rdflib.term.URIRef(u'http://www.w3.org/2002/12/cal/ical#')),
        (u'ns532', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        (u'ns541', rdflib.term.URIRef(u'http://schema.org/')),
        (u'ns542', rdflib.term.URIRef(u'http://www.w3.org/2002/12/cal/ical#')),
        (u'ns551', rdflib.term.URIRef(u'http://id.loc.gov/authorities/sh98002267#')),
        (u'ns552', rdflib.term.URIRef(u'http://id.loc.gov/authorities/sh96000740#')),
        (u'ns553', rdflib.term.URIRef(u'http://purl.org/dc/')),
        (u'ns561', rdflib.term.URIRef(u'http://purl.org/dc/')),
        (u'ns57', rdflib.term.URIRef(u'http://id.loc.gov/authorities/sh96000740#')),
        (u'ns571', rdflib.term.URIRef(u'http://id.loc.gov/authorities/sh96000740#')),
        (u'ns572', rdflib.term.URIRef(u'http://id.loc.gov/authorities/sh98002267#')),
        (u'ns581', rdflib.term.URIRef(u'http://purl.org/adms/representationtechnique/')),
        (u'ns591', rdflib.term.URIRef(u'http://purl.org/adms/interoperabilitylevel/')),
        (u'ns601', rdflib.term.URIRef(u'http://purl.org/adms/publishertype/')),
        (u'ns61', rdflib.term.URIRef(u'http://schema.org/')),
        (u'ns611', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        (u'ns6111', rdflib.term.URIRef(u'http://schema.org/')),
        (u'ns62', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        (u'ns63', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/contact#')),
        (u'ns641', rdflib.term.URIRef(u'http://purl.org/adms/licencetype/')),
        (u'ns651', rdflib.term.URIRef(u'https://joinup.ec.europa.eu/elibrary/document/')),
#        (u'ns661', rdflib.term.URIRef(u'http://purl.org/')),
        (u'ns681', rdflib.term.URIRef(u'http://www.w3.org/2001/sw/WebOnt/')),
        (u'ns691', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/')),
        (u'ns701', rdflib.term.URIRef(u'http://www.w3.org/1999/10/')),
        (u'ns71', rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#')),
        (u'ns72', rdflib.term.URIRef(u'http://schema.org/')),
        (u'ns721', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/contact#')),
        (u'ns741', rdflib.term.URIRef(u'http://www.w3.org/People/Berners-Lee/card#')),
        (u'ns761', rdflib.term.URIRef(u'http://lists.w3.org/Archives/Public/www-webont-wg/2001Nov/0006.')),
        (u'ns781', rdflib.term.URIRef(u'http://www.w3.org/ns/')),
        (u'ns791', rdflib.term.URIRef(u'http://philarcher.org/foaf.rdf#')),
        (u'ns792', rdflib.term.URIRef(u'http://purl.org/ontology/bibo/')) ,
        (u'ns8021', rdflib.term.URIRef(u'http://www.wikidata.org/entity/')) ,
        (u'ns803', rdflib.term.URIRef(u'http://www.w3.org/ns/regorg#')) ,
        (u'ns81', rdflib.term.URIRef(u'http://dublincore.org/usage/terms/history/#')),
        (u'ns82', rdflib.term.URIRef(u'http://purl.org/dc/aboutdcmi#')),
        (u'ns831', rdflib.term.URIRef(u'http://www.w3.org/')),
        (u'ns832', rdflib.term.URIRef(u'https://www.w3.org/wiki/WebSchemas/SchemaDotOrgSources#')) ,
        (u'ns834', rdflib.term.URIRef(u'http://www.wikidata.org/entity/')) ,
        (u'ns843', rdflib.term.URIRef(u'http://purl.org/ontology/bibo/')) ,
        (u'ns851', rdflib.term.URIRef(u'http://www.w3.org/People/all#')),
        (u'ns852', rdflib.term.URIRef(u'http://purl.org/ontology/mo/')) ,
        (u'ns861', rdflib.term.URIRef(u'http://labs.mondeca.com/vocab/voaf#')),
        (u'ns862', rdflib.term.URIRef(u'http://www.w3.org/ns/regorg#')) ,
        (u'ns871', rdflib.term.URIRef(u'http://www.w3.org/TR/2013/NOTE-vocab-adms-20130528/')),
        (u'ns881', rdflib.term.URIRef(u'http://makxdekkers.com/makxdekkers.rdf#')),
        (u'ns901', rdflib.term.URIRef(u'http://andrea-perego.name/foaf/#')),
        (u'ns91', rdflib.term.URIRef(u'http://www.ietf.org/rfc/')),
        (u'ns92', rdflib.term.URIRef(u'http://purl.org/dc/aboutdcmi#')),
        (u'ns93', rdflib.term.URIRef(u'http://dublincore.org/usage/terms/history/#')),
        (u'owl', rdflib.term.URIRef(u'http://www.w3.org/2002/07/owl#')),
        (u'person', rdflib.term.URIRef(u'http://www.w3.org/ns/person#')) ,
        (u'prism', rdflib.term.URIRef(u'http://prismstandard.org/namespaces/1.2/basic/')) ,
        (u'rddl', rdflib.term.URIRef(u'http://www.rddl.org/')) ,
        #(u'schema', rdflib.term.URIRef(u'http://schemas.talis.com/2005/address/schema#')) ,
        (u'skosxl', rdflib.term.URIRef(u'http://www.w3.org/2008/05/skos-xl#')) ,
        (u'spec', rdflib.term.URIRef(u'http://www.w3.org/2002/12/cal/icalSpec#')) ,
        (u'status', rdflib.term.URIRef(u'http://purl.org/ontology/bibo/status/')) ,
        (u'vann', rdflib.term.URIRef(u'http://purl.org/vocab/vann/')),
        (u'voaf', rdflib.term.URIRef(u'http://purl.org/vocommons/voaf#')),
        (u'vs', rdflib.term.URIRef(u'http://www.w3.org/2003/06/sw-vocab-status/ns#')),
        (u'wdrs', rdflib.term.URIRef(u'http://www.w3.org/2007/05/powder-s#')),
        (u'wot', rdflib.term.URIRef(u'http://xmlns.com/wot/0.1/index.rdf')), # http://xmlns.com/wot/0.1/ 
        (u'wot1', rdflib.term.URIRef(u'http://xmlns.com/wot/0.1/index.rdf')),
        (u'xhv', rdflib.term.URIRef(u'http://www.w3.org/1999/xhtml/vocab#')),
        (u'xlink', rdflib.term.URIRef(u'http://www.w3.org/1999/xlink')) ,
         (u'xsi', rdflib.term.URIRef(u'http://www.w3.org/2001/XMLSchema-instance')) ,

## to check
        (u'ns207', rdflib.term.URIRef(u'https://plus.google.com/+BarbaraStarr/posts/aTSzKncezpp#')) ,
('ns200', rdflib.term.URIRef(u'http://twitter.com/')) ,
('ns209', rdflib.term.URIRef(u'https://databox.me:3200/webid#')) ,
(u'ns83', rdflib.term.URIRef(u'http://www.openlinksw.com/DAV/data/turtle/cartridge_ontologies/')) ,
(u'ns1971', rdflib.term.URIRef(u'http://dig.csail.mit.edu/data#')) ,
(u'ns2171', rdflib.term.URIRef(u'http://en.wikipedia.org/wiki/User:')) ,

(u'hrev1', rdflib.term.URIRef(u'http://www.purl.org/stuff/hrev#')) ,
(u'B', rdflib.term.URIRef(u'https://www.w3.org/People/Berners-Lee/')) ,
(u'ns1961', rdflib.term.URIRef(u'http://www.ecs.soton.ac.uk/~dt2/dlstuff/www2006_data#')) ,
(u'radio', rdflib.term.URIRef(u'http://www.radiopop.co.uk/')) ,
('ns220', rdflib.term.URIRef(u'https://timbl.com/timbl/Data/')) ,
(u'default9', rdflib.term.URIRef(u'http://www.w3.org/2001/XMLSchema')) ,
(u'ns1901', rdflib.term.URIRef(u'https://timbl.com/timbl/Public/')) ,
(u'ns6113', rdflib.term.URIRef(u'https://schema.org/')) ,
(u'product', rdflib.term.URIRef(u'http://www.buy.com/rss/module/productV2/')) ,
(u'space', rdflib.term.URIRef(u'http://www.w3.org/ns/pim/space#')) ,
(u'org', rdflib.term.URIRef(u'http://www.w3.org/ns/org#')) ,
(u'card', rdflib.term.URIRef(u'https://www.w3.org/People/Berners-Lee/card#')) ,
(u'ns189', rdflib.term.URIRef(u'http://www.w3.org/ns/auth/acl#')) ,
(u'ns10912', rdflib.term.URIRef(u'https://rhiaro.co.uk/#')) ,
(u'ns10621', rdflib.term.URIRef(u'http://www.w3.org/data#')) ,
('ns190', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2007/01/camp/data#')) ,
('ns194', rdflib.term.URIRef(u'http://www.w3.org/2011/Talks/0331-hyderabad-tbl/data#')) ,

('ns198', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2005/ajar/ajaw/data#')) ,
(u'blog', rdflib.term.URIRef(u'http://dig.csail.mit.edu/breadcrumbs/blog/')) ,
(u'ns11', rdflib.term.URIRef(u'http://www.openlinksw.com/schemas/')) ,
(u'ns16', rdflib.term.URIRef(u'http://open.vocab.org/terms/')) ,
(u'ns15', rdflib.term.URIRef(u'http://purl.org/goodrelations/')) ,

(u'ns1013', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/organization/openlink#')) ,
(u'b3s', rdflib.term.URIRef(u'http://b3s.openlinksw.com/')) ,
(u'ns710', rdflib.term.URIRef(u'http://www.openlinksw.com/schema/')) ,
(u'ns10811', rdflib.term.URIRef(u'http://csarven.ca/#')) ,
(u'ns1061', rdflib.term.URIRef(u'http://www.w3.org/2012/')) ,

(u'formats', rdflib.term.URIRef(u'http://www.w3.org/ns/formats/')) ,

(u'ns8', rdflib.term.URIRef(u'http://www.openlinksw.com/data/turtle/cartridge_ontologies/')) ,
(u'cert', rdflib.term.URIRef(u'http://www.w3.org/ns/auth/cert#')) ,


('ns237', rdflib.term.URIRef(u'https://www.w3.org/Press/Stock/Berners-Lee/2001-')) ,
('ns230', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/data#')) ,
(u'ns2291', rdflib.term.URIRef(u'http://wiki.ontoworld.org/index.php/')) ,
(u'ns216', rdflib.term.URIRef(u'https://www.facebook.com/hashtag/ht#')) ,
(u'rct', rdflib.term.URIRef(u'http://www.w3.org/2000/10/rdf-tests/rdfcore/testSchema#')) ,
(u'ns116', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/string#')) ,
('ns117', rdflib.term.URIRef(u'http://www.w3.org/2006/vcard/')) ,

        ###
        (u'ns4351', rdflib.term.URIRef(u'http://www.kjetil.kjernsmo.net/foaf#')) ,

(u'ns4281', rdflib.term.URIRef(u'https://twitter.com/')) ,

(u'ns270', rdflib.term.URIRef(u'http://people.csail.mit.edu/lkagal/foaf#')) ,
(u'ns278', rdflib.term.URIRef(u'http://dig.csail.mit.edu/People/gjs-foaf#')) ,


(u'ns309', rdflib.term.URIRef(u'http://people.apache.org/~oshani/foaf.rdf#')) ,
(u'ns308', rdflib.term.URIRef(u'http://people.csail.mit.edu/ryanlee/about#')) ,

(u'hrev1', rdflib.term.URIRef(u'http://www.purl.org/stuff/hrev#')) ,
(u'rd', rdflib.term.URIRef(u'http://www.w3.org/ns/iana/media-types/application/rdf+xml#')) ,
(u'ns4411', rdflib.term.URIRef(u'http://www.turnguard.com/')) ,

(u'ns1412', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/person/openlink#')) ,
('ns389', rdflib.term.URIRef(u'https://timathom5.databox.me/profile/card#')) ,


('ns430', rdflib.term.URIRef(u'http://www.sharesemantics.com/foaf.rdf#')) ,

(u'oplbase', rdflib.term.URIRef(u'http://www.openlinksw.com/schemas/oplbase#')) ,
(u'ns3901', rdflib.term.URIRef(u'http://csarven.ca/')) ,

(u'ns3991', rdflib.term.URIRef(u'https://identi.ca/')) ,
(u'ns328', rdflib.term.URIRef(u'http://www.w3.org/People/Sandro/data#')) ,


(u'ns3861', rdflib.term.URIRef(u'http://en.wikipedia.org/wiki/')) ,
(u'ns4071', rdflib.term.URIRef(u'https://sandro.databox.me/profile/card#')) ,
(u'ns4431', rdflib.term.URIRef(u'http://danbri.org/foaf.rdf#')) ,
('ns405', rdflib.term.URIRef(u'http://bblfish.net/people/henry/card#')) ,
('ns409', rdflib.term.URIRef(u'http://richard.cyganiak.de/#')) ,
(u'ns4081', rdflib.term.URIRef(u'http://tobyinkster.co.uk/#')) ,


(u'ns3871', rdflib.term.URIRef(u'https://csarven.databox.me/Preferences/')) ,
(u'st', rdflib.term.URIRef(u'http://www.w3.org/ns/posix/stat#')) ,
(u'oplcert', rdflib.term.URIRef(u'http://www.openlinksw.com/schemas/cert#')) ,
(u'gen', rdflib.term.URIRef(u'http://www.w3.org/2006/gen/ont#')) ,
(u'ns1112', rdflib.term.URIRef(u'http://dbpedia.openlinksw.com/wikicompany/resource/')) ,
(u'org1', rdflib.term.URIRef(u'http://www.w3.org/2001/04/roadmap/org#')) ,
('ns438', rdflib.term.URIRef(u'http://brigitteschuster.com/#')) ,
('ns437', rdflib.term.URIRef(u'http://g1o.net/foaf.rdf#')) ,
('ns434', rdflib.term.URIRef(u'https://gitorious.org/~')) ,
('ns433', rdflib.term.URIRef(u'http://en.wikipedia.org/wiki/Category:')) ,
('ns431', rdflib.term.URIRef(u'http://csarven.ca/media/images/')) ,
(u'ns4271', rdflib.term.URIRef(u'http://mhausenblas.info/#')) ,


(u'ns3881', rdflib.term.URIRef(u'http://public.lanl.gov/herbertv/profile/#')) ,
(u'ns290', rdflib.term.URIRef(u'http://www.w3.org/People/Connolly/#')) ,
(u'ns297', rdflib.term.URIRef(u'http://www.pipian.com/people/pipian/card#')) ,
(u'ns299', rdflib.term.URIRef(u'http://dig.csail.mit.edu/People/kkw#')) ,
(u'ns298', rdflib.term.URIRef(u'http://www.w3.org/People/Connolly/')) ,
(u'ns4051', rdflib.term.URIRef(u'http://oleg.utou.ch/foaf.rdf#')) ,
(u'ns4461', rdflib.term.URIRef(u'https://deiu.me/profile#')) ,
(u'tur', rdflib.term.URIRef(u'http://www.w3.org/ns/iana/media-types/text/turtle#')) ,
(u'ns454', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/admin/')) ,
(u'ns2100', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_family/uda#')) ,
('ns378', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product/Virtuoso#')) ,
(u'ns453', rdflib.term.URIRef(u'http://dig.csail.mit.edu/People/yosi#')) ,
(u'ns424', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_family/utilities#')) ,
('ns425', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/KingsleyUyiIdehen/Public/kingsley.ttl#')) ,
('ns426', rdflib.term.URIRef(u'http://harth.org/andreas/foaf#')) ,
('ns427', rdflib.term.URIRef(u'http://byoung@bigbluehat.com/#')) ,
(u'ns357', rdflib.term.URIRef(u'http://www.w3.org/Icons/')) ,
(u'ns354', rdflib.term.URIRef(u'http://www.w3.org/2002/01/tr-automation/')) ,
(u'ns355', rdflib.term.URIRef(u'http://www.w3.org/2000/08/w3c-synd/')) ,
(u'ns358', rdflib.term.URIRef(u'http://www.w3.org/2000/04/mem-news/')) ,
(u'ns513', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_family/development#')) ,

(u'ns289', rdflib.term.URIRef(u'http://dig.csail.mit.edu/People/')) ,
(u'ns287', rdflib.term.URIRef(u'http://www.w3.org/People/djweitzner/foaf#')) ,
(u'ns280', rdflib.term.URIRef(u'http://dig.csail.mit.edu/People/kennyluck#')) ,

(u'cvocab', rdflib.term.URIRef(u'http://open-services.net/ns/core#')) ,
('ns369', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/person/openlink/online_account/webid/http%3A%2F%2Fwww.openlinksw.com%2Fdataspace%2Fperson%2Fopenlink%23')) ,
(u'ns368', rdflib.term.URIRef(u'http://rdfs.org/sioc/services#')) ,
(u'ns360', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_family/dca#')) ,
(u'ns4321', rdflib.term.URIRef(u'https://pietercolpaert.be/#')) ,
('ns387', rdflib.term.URIRef(u'http://www.polleres.net/foaf.rdf#')) ,
('ns380', rdflib.term.URIRef(u'http://eis.iai.uni-bonn.de/')) ,
('ns388', rdflib.term.URIRef(u'http://emilianc.info/#')) ,
(u'ns455', rdflib.term.URIRef(u'http://www.w3.org/Consortium/Legal/2002/')) ,
(u'ns452', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/doc/')) ,
(u'ns1018', rdflib.term.URIRef(u'https://www.openlinksw.com/dataspace/organization/')) ,
(u'ns3781', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/services/')) ,
('ns370', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/person/kidehen@openlinksw.com#')) ,
('ns377', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/openlink#')) ,
(u'ns712', rdflib.term.URIRef(u'http://www.openlinksw.com/')) ,
(u'ns4331', rdflib.term.URIRef(u'https://youtube.com/user/')) ,
('ns395', rdflib.term.URIRef(u'http://www.rubensworks.net/#')) ,
('ns390', rdflib.term.URIRef(u'https://ruben.verborgh.org/profile/#')) ,

(u'ns811', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/')) ,

(u'ns3951', rdflib.term.URIRef(u'https://github.com/')) ,
(u'ns4291', rdflib.term.URIRef(u'http://www.wikier.org/foaf#')) ,
(u'ns449', rdflib.term.URIRef(u'http://lists.foaf-project.org/mailman/listinfo/')) ,
('ns447', rdflib.term.URIRef(u'http://www.openlinksw.com/#')) ,

(u'ns448', rdflib.term.URIRef(u'http://www.w3.org/ns/auth/')) ,



## next round
        (u'ns1023', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/dasdk#')) ,
(u'ns1020', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/ClusteringforFaultToleranceLoadBalancing#')) ,
(u'ns2014', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/AIX#')) ,
(u'ns2015', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/feeds#')) ,
(u'ns2012', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/SPARQLQueryLanguage#')) ,
(u'ns2013', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/SCOOpenServer#')) ,
#(u'ns2010', rdflib.term.URIRef(u'http://sw.opencyc.org/concept/')) ,
(u'ns3013', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/IntelligentQueryOptimization#')) ,
(u'ns664', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/module/VirtuosoSponger#')) ,
(u'ns5401', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/KingsleyUyiIdehen/Public/software-agent.ttl#')) ,
(u'ns5661', rdflib.term.URIRef(u'https://www.w3.org/People/Berners-Lee//card.rdf#')) ,
(u'ns2011', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/st/odbc#')) ,
(u'ns3014', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_family/professionalservices#')) ,
(u'ns1712', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/RDFawareClustering#')) ,
(u'ns3712', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_release/VirtuosoRelease72x#')) ,
(u'ns479', rdflib.term.URIRef(u'http://teole.jfouffa.org/People/Teole/card.rdf#')) ,
(u'ns473', rdflib.term.URIRef(u'http://www.advogato.org/person/oshani/foaf.rdf#')) ,
(u'ns472', rdflib.term.URIRef(u'http://identi.ca/oshanis/')) ,
(u'ns471', rdflib.term.URIRef(u'http://www.cs.umd.edu/~hendler/2003/foaf.rdf#')) ,
(u'ns470', rdflib.term.URIRef(u'http://www.aaronsw.com/about.xrdf#')) ,

(u'ns476', rdflib.term.URIRef(u'http://users.ecs.soton.ac.uk/mc/mcfoaf.rdf#')) ,
(u'ns654', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/module/VDB#')) ,
(u'hrev1', rdflib.term.URIRef(u'http://www.purl.org/stuff/hrev#')) ,
(u'ns5701', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/snevitt/YouID/Sonja_Heward_Mills_id_myopenlink_net_1/profile.ttl#')) ,
(u'ns1916', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/MacOSX#')) ,
(u'ns1917', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/mail#')) ,
(u'ns5671', rdflib.term.URIRef(u'http://emeka.name.ng/data/profile.ttl#')) ,
(u'ns2912', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_family/virtuoso#')) ,
(u'ns2910', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/MacOSClassic#')) ,
(u'ns1418', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/admin#')) ,
(u'ns1416', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/GenericLinux#')) ,
(u'ns1415', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/SupportsBroadRangeofDataAccessStandards#')) ,
(u'ns2411', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/RDFViewsoverNativeSQLDataSources#')) ,
(u'ns1714', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/Tru64UNIX#')) ,
(u'ns1715', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/webdev#')) ,
(u'ns2814', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/ogallery#')) ,
(u'ns2810', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/UnixWare#')) ,
(u'ns5281', rdflib.term.URIRef(u'http://virtuoso.openlinksw.com/data/turtle/virtuoso7/2014/')) ,
(u'ns5271', rdflib.term.URIRef(u'http://virtuoso.openlinksw.com/images/')) ,
(u'ns464', rdflib.term.URIRef(u'http://perich.net/foaf.rdf#')) ,
(u'ns465', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2008/02/rmp/rmp-schema#')) ,
(u'ns466', rdflib.term.URIRef(u'http://www.ldodds.com/foaf/')) ,
(u'ns463', rdflib.term.URIRef(u'http://umbc.edu/~finin/')) ,
(u'ns469', rdflib.term.URIRef(u'http://swiss.csail.mit.edu/users/gjs/')) ,
(u'ns617', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/module/BusinessAnalytics#')) ,
(u'ns5461', rdflib.term.URIRef(u'http://id.myopenlink.net/dataspace/person/kidehen#')) ,
(u'ns616', rdflib.term.URIRef(u'http://www.openlinksw.com/about/id/entity/urn/opl:shop:offering:sponging:cache:')) ,
(u'oplacl', rdflib.term.URIRef(u'http://www.openlinksw.com/ontology/acl#')) ,
(u'ns5601', rdflib.term.URIRef(u'https://www.linkedin.com/in/kidehen#')) ,
(u'ns5110', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-app-developer-workgroup-WKS-ANY#')) ,
(u'ns1913', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/odbc#')) ,
(u'ns1914', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/RunTimeHosting#')) ,
(u'ns5851', rdflib.term.URIRef(u'http://melvincarvalho.com/#')) ,
(u'ns2212', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/RDFMiddleware#')) ,
(u'ns529', rdflib.term.URIRef(u'http://www.w3.org/People/djweitzner/public/foaf.rdf#')) ,
(u'ns3510', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/FreeBSD#')) ,
(u'ns5471', rdflib.term.URIRef(u'https://twitter.com/kidehen#')) ,
(u'ns4711', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-enterprise-workgroup-server-WKS-ANY#')) ,
(u'ns913', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/diagnostictools#')) ,
('ns568', rdflib.term.URIRef(u'http://id.myopenlink.net/dataspace/person/KingsleyUyiIdehen#')) ,
(u'oplsoft', rdflib.term.URIRef(u'http://www.openlinksw.com/ontology/software#')) ,
(u'ns1612', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/WebServiceDeploymentPlatform#')) ,

(u'ns523', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_family/')) ,
(u'ns3610', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/Irix#')) ,
('ns488', rdflib.term.URIRef(u'https://www.turnguard.com/')) ,
('ns539', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/cidehen/YouID/Caroline_Idehen_id_myopenlink_net/profile.ttl#')) ,
(u'ns621', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/module/ODS#')) ,
(u'ns5441', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/danielhm/YouID/Daniel_Heward_Mills_LinkedIn_2_id_myopenlink_net/profile.ttl#')) ,
(u'ns3112', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/DynixPTX#')) ,
(u'ns554', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-app-developer-development-WKS-ANY#')) ,
(u'ns5591', rdflib.term.URIRef(u'http://id.myopenlink.net/dataspace/person/snevitt#')) ,
('ns556', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/cblakeley/youid_profile_160420.ttl#')) ,
(u'ns1113', rdflib.term.URIRef(u'http://schemas.microsoft.com/2012/12/certificatecontext/extension/')) ,
(u'ns1116', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/demo#')) ,
(u'ns1117', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/crm#')) ,
(u'ns1114', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/st/jdbc#')) ,
(u'ns1711', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/express/odbc#')) ,
('ns544', rdflib.term.URIRef(u'https://pbs.twimg.com/profile_images/2277418105/')) ,
(u'ns633', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/module/Replication#')) ,
(u'ns5801', rdflib.term.URIRef(u'http://kingsley.idehen.net/dataspace/person/kidehen#')) ,
(u'ns1024', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/blog#')) ,
(u'ns1022', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/config#')) ,
(u'oplog', rdflib.term.URIRef(u'http://www.openlinksw.com/schemas/opengraph#')) ,
(u'ns3016', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/Virtuoso#')) ,
(u'card1', rdflib.term.URIRef(u'http://people.apache.org/~oshani/foaf#')) ,
(u'ns509', rdflib.term.URIRef(u'http://www.w3.org/People/Berners-Lee/')) ,
(u'ns508', rdflib.term.URIRef(u'http://www.w3.org/2001/02pd/rec54#')) ,
(u'ns500', rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/')) ,
(u'ns507', rdflib.term.URIRef(u'http://www.w3.org/Member/Mail/#')) ,
(u'ns506', rdflib.term.URIRef(u'http://www.w3.org/2001/04/roadmap/')) ,
(u'ns505', rdflib.term.URIRef(u'http://www.w3.org/DesignIssues/')) ,
(u'ns436', rdflib.term.URIRef(u'https://melvincarvalho.com/#')) ,
(u'ns524', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-app-developer-department-WKS-ANY#')) ,
('ns527', rdflib.term.URIRef(u'http://virtuoso.openlinksw.com/images/slider/')) ,
(u'ns3312', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/ContentNegotiationSupportincludingRDFhandling#')) ,
(u'ns3010', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/JavaVirtualMachine#')) ,
(u'ns5571', rdflib.term.URIRef(u'http://www.openlinksw.com/blog/~')) ,
(u'ns5581', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/hugh/YouID/WTD_id_myopenlink_net_hugh/profile.ttl#')) ,
(u'ns475', rdflib.term.URIRef(u'http://people.apache.org/~oshani/')) ,
(u'ns474', rdflib.term.URIRef(u'http://www.ivan-herman.net/foaf.rdf#')) ,
(u'rmp', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2008/02/rmp/rmp-schema')) ,
(u'ns1815', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/wiki#')) ,
(u'ns1814', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/Firefox#')) ,
(u'ns1812', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/RDFbasedLinkedDataDeployment#')) ,
(u'ns1810', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/mt/odbc#')) ,
(u'ns2714', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/ods#')) ,
(u'ns2210', rdflib.term.URIRef(u'https://www.w3.org/wiki/WebAccessControl#')) ,
(u'ns2213', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/HPUX#')) ,
(u'ns2215', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/sync#')) ,
(u'ns515', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2010/LinkedData/Images/')) ,
(u'ns516', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2009/DHS-fusion/')) ,
(u'ns3412', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/DistributedTransactionsSupport2PhaseCommit#')) ,
(u'ns518', rdflib.term.URIRef(u'https://www.openlinksw.com/about/id/entity/http/www.openlinksw.com/schemas/')) ,
('ns519', rdflib.term.URIRef(u'http://www.openlinksw.com/data/turtle/oplweb/')) ,
(u'ns916', rdflib.term.URIRef(u'http://www.openlinksw.com/feeds/people/')) ,
(u'ns2510', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/MetaSchemalanguage#')) ,
(u'ns5481', rdflib.term.URIRef(u'https://plus.google.com/112399767740508618350/')) ,
(u'ns2113', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/Windows#')) ,
(u'ns2112', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/RDFDataManagement#')) ,
(u'ns2110', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/st/dotnet#')) ,
(u'ns2115', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/community#')) ,
(u'ns713', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format/enterprise#')) ,
(u'ns4210', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/HybridRdbms#')) ,
('ns560', rdflib.term.URIRef(u'http://id.myopenlink.net/public_home/danielhm/Public/YouID/IDcard_LinkedIn_161215_151932/161215_151932_profile.ttl#')) ,
('ns565', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/smalinin/YouID/Sergey_Malinin_id_myopenlink_net/profile.ttl#')) ,
(u'ns564', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-app-developer-project-WKS-ANY#')) ,
('ns567', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/lorrian/YouID/Lorrian_Uzoka_id_myopenlink_net/profile.ttl#')) ,
(u'ns2211', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/jdbc#')) ,
(u'ns457', rdflib.term.URIRef(u'http://www.csail.mit.edu/')) ,
(u'ns456', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2008/02/rmp/')) ,
(u'ns1019', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format/express#')) ,
('ns575', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/tthibodeau/YouID/Ted_Thibodeau_Jr_id_myopenlink_net_2016_12_21/profile.ttl#')) ,
(u'ns604', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/module/ABACACLs#')) ,
(u'ns714', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format/fs#')) ,
(u'ns5791', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/danielhm/profile.ttl#')) ,
(u'oplic', rdflib.term.URIRef(u'http://www.openlinksw.com/ontology/licenses#')) ,
(u'ns5771', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/emekaokoye/YouID/Emeka_Okoye_id_myopenlink_net_1/profile.ttl#')) ,
(u'ns815', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format/dav#')) ,
(u'ns814', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format/standard#')) ,
(u'ns816', rdflib.term.URIRef(u'http://www.openlinksw.com/feeds/people/openlink/')) ,
(u'ns813', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/benchmarking#')) ,
(u'ns812', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format/mt#')) ,
(u'ns5501', rdflib.term.URIRef(u'http://kingsley.idehen.net/public_home/kidehen/profile.ttl#')) ,
(u'ns1615', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/addressbook#')) ,
(u'ns1611', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/mt/dotnet#')) ,
(u'ns1517', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/bpel#')) ,
(u'ns1514', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/WebDAVCompliantContentManager#')) ,
(u'ns2314', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/content#')) ,
(u'ns2311', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/RDFViewsoverExternalDataSources#')) ,
(u'ns2310', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/dotnet#')) ,
('ns549', rdflib.term.URIRef(u'http://id.myopenlink.net/dataspace/person/tthibodeau#')) ,
('ns548', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/jbousa/YouID/John_J_Bousa_id_myopenlink_net/profile.ttl#')) ,
(u'ns4961', rdflib.term.URIRef(u'http://www.openlinksw.com/DAV/data/turtle/')) ,
(u'ns3910', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/Solaris#')) ,
(u'ns3912', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/SparqlRdbms#')) ,
(u'ns4011', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/VirtualSqlRdbms#')) ,
(u'ns3513', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/HTTPCompliantApplicationServer#')) ,
(u'ns5011', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-enterprise-large-server-WKS-ANY#')) ,
(u'ns2711', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/ParallelizedSQLQueryExecution#')) ,
(u'ns2710', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/.NETCLR#')) ,
(u'ns2413', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/calendar#')) ,
(u'ns2410', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/st/oledb#')) ,
(u'ns1414', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/st/xmla#')) ,
('ns534', rdflib.term.URIRef(u'http://kingsley.idehen.net/DAV/home/kidehen/agent-profile-document.ttl#')) ,
(u'ns533', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-pilot-ANY#')) ,
(u'ns530', rdflib.term.URIRef(u'http://auth.mit.edu/')) ,
(u'ns1218', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/WebServicestoRDFLinkedData#')) ,
(u'ns1217', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format_category/mt/jdbc#')) ,
(u'ns482', rdflib.term.URIRef(u'http://presbrey.mit.edu/foaf.rdf#')) ,
(u'ns483', rdflib.term.URIRef(u'http://www.w3.org/People/Jacobs/contact.rdf#')) ,
(u'ns480', rdflib.term.URIRef(u'http://semantictweet.com/oshanis#')) ,
(u'ns481', rdflib.term.URIRef(u'http://www.w3.org/2005/rules/wg/data#')) ,
(u'ns487', rdflib.term.URIRef(u'http://myopenlink.net/dataspace/person/kidehen#')) ,
(u'ns484', rdflib.term.URIRef(u'http://oshani.mit.edu/')) ,
(u'ns485', rdflib.term.URIRef(u'http://www.cambridgesemantics.com/people/')) ,
('ns558', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/thaynes/YouID/Tim_Haynes_id_myopenlink_net/profile.ttl#')) ,
('ns555', rdflib.term.URIRef(u'http://id.myopenlink.net/DAV/home/smalinin/YouID/Sergey_Malinin_Tw_id_myopenlink_net/profile.ttl#')) ,
('ns557', rdflib.term.URIRef(u'http://id.myopenlink.net/dataspace/person/thaynes#')) ,
(u'ns4310', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/HttpServer#')) ,
(u'ns4811', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-enterprise-department-server-WKS-ANY#')) ,
(u'ui', rdflib.term.URIRef(u'http://www.w3.org/ns/ui#')) ,
(u'ns586', rdflib.term.URIRef(u'http://www.w3.org/People/EM/contact#')) ,
(u'ns588', rdflib.term.URIRef(u'http://www.w3.org/People/')) ,
(u'oplprod', rdflib.term.URIRef(u'http://www.openlinksw.com/ontology/products#')) ,
(u'ns1220', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/doc#')) ,
(u'ns646', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/module/VAL#')) ,
(u'ns2911', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/IndustryStandardsSupport#')) ,
(u'ns3113', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/KnowledgeManagement#')) ,
(u'ns2811', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/IndustryStandardQueryLanguageSupportSPARQL#')) ,
(u'ns4100', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product/')) ,
('ns594', rdflib.term.URIRef(u'http://www.openlinksw.com/dataspace/openlink/')) ,
(u'ns912', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_format/st#')) ,
(u'rep', rdflib.term.URIRef(u'http://dig.csail.mit.edu/2008/02/rep')) ,
(u'ns2616', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/bkm#')) ,
(u'ns2610', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/opsys_family/MonoCLR#')) ,
(u'ns2613', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/NetworkbasedQueryParallelization#')) ,
(u'ns3212', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/ConfigurablePolicybasedSecurity#')) ,
(u'rsa', rdflib.term.URIRef(u'http://www.w3.org/ns/auth/rsa#')) ,
('ns496', rdflib.term.URIRef(u'http://www.openlinksw.com/data/turtle/')) ,
(u'ns3811', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/SqlRdbms#')) ,
(u'feat', rdflib.term.URIRef(u'http://www.openlinksw.com/ontology/features#')) ,
(u'ns4113', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/VirtualSparqlRdbms#')) ,
(u'ns462', rdflib.term.URIRef(u'http://web.mit.edu/tkang/www/foaf.rdf#')) ,
(u'ns1316', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/discuss#')) ,
(u'ns1312', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/xmla#')) ,
(u'ns543', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-personal-WKS-ANY#')) ,
(u'ns1313', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/StorageEngine#')) ,
(u'ns2514', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/polls#')) ,
(u'ns1513', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/oledb#')) ,
(u'ns459', rdflib.term.URIRef(u'http://swiss.csail.mit.edu/users/cph/foaf.rdf#')) ,
(u'ns1115', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_feature/LinkedDataPublishing#')) ,
(u'ns445', rdflib.term.URIRef(u'http://tomheath.com/id/')) ,
(u'ns4911', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/offer/Offer-2016-08-virtuoso-8-enterprise-mid-range-server-WKS-ANY#')) ,
(u'ns914', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/utilities#')) ,
(u'ns915', rdflib.term.URIRef(u'http://data.openlinksw.com/oplweb/product_category/repository#')) ,

        ## next round
        ('ns668', rdflib.term.URIRef(u'https://dan-f.databox.me/profile/card#')) ,
('ns669', rdflib.term.URIRef(u'https://social.umeahackerspace.se/mmn/')) ,
('ns665', rdflib.term.URIRef(u'https://workbot.databox.me/profile/card#')) ,
('ns618', rdflib.term.URIRef(u'http://openid4.me/')) ,
('ns595', rdflib.term.URIRef(u'http://my-profile.eu/ns/webapp#')) ,
('ns596', rdflib.term.URIRef(u'http://my-profile.eu/ns/socweb#')) ,
('ns639', rdflib.term.URIRef(u'https://pbs.twimg.com/profile_images/1122951400/')) ,
('ns622', rdflib.term.URIRef(u'http://mmt.me.uk/foaf.rdf#')) ,

('ns627', rdflib.term.URIRef(u'https://s3.amazonaws.com/webid-sandbox/Profile/Basic-Identity-Claims-And-Profile-Document.ttl#')) ,
('ns624', rdflib.term.URIRef(u'https://en.gravatar.com/userimage/5236560/4')) ,
('ns625', rdflib.term.URIRef(u'http://rhiaro.co.uk/about#')) ,
('ns658', rdflib.term.URIRef(u'https://melvin.databox.me/')) ,
('ns630', rdflib.term.URIRef(u'https://akuckartz.databox.me/profile/card#')) ,
('ns637', rdflib.term.URIRef(u'https://inartes.databox.me/profile/card#')) ,

('ns606', rdflib.term.URIRef(u'http://dr.jones.dk/me/#')) ,
('ns608', rdflib.term.URIRef(u'https://chrisellis.databox.me/profile/card#')) ,
('ns609', rdflib.term.URIRef(u'https://projectbitmark.slack.com/team/melvincarvalho#')) ,
('ns650', rdflib.term.URIRef(u'http://melvincarvalho.com/wallet/small.ttl#')) ,
('ns655', rdflib.term.URIRef(u'http://bart.netage.nl/foaf#')) ,

('ns600', rdflib.term.URIRef(u'http://purl.org/net/pingback/')) ,
('ns607', rdflib.term.URIRef(u'https://sadecki.com/people/mark/webid#')) ,


('ns634', rdflib.term.URIRef(u'http://my.opera.com/chaals/xml/foaf/#')) ,


('ns640', rdflib.term.URIRef(u'http://presbrey.mit.edu/foaf#')) ,

('ns656', rdflib.term.URIRef(u'https://silverbucket.net/img/')) ,
('ns598', rdflib.term.URIRef(u'https://w3id.org/cc#')) ,
('ns599', rdflib.term.URIRef(u'http://ns.rww.io/wapp#')) ,
('ns667', rdflib.term.URIRef(u'https://web.archive.org/web/20110202102702/http://a3.twimg.com/profile_images/532261191/')) ,

('ns675', rdflib.term.URIRef(u'http://databox.me:3200/webid#')) ,
('ns674', rdflib.term.URIRef(u'https://my-profile.eu/')) ,
('ns670', rdflib.term.URIRef(u'http://wojciechpolak.org/foaf.rdf#')) ,
('ns673', rdflib.term.URIRef(u'http://bshambaugh.org/')) ,


### enmxt
        
        (u'ns3520', rdflib.term.URIRef(u'http://purl.org/NET/googlevocab#')) ,
        ('ns1000', rdflib.term.URIRef(u'http://ii.uwb.edu.pl/~dtomaszuk/')) ,
        ('ns1004', rdflib.term.URIRef(u'http://media-cache-ak0.pinimg.com/originals/f5/8a/2e/')) ,
        ('ns627', rdflib.term.URIRef(u'http://media-cache-ak0.pinimg.com/originals/52/de/1b/52')) ,
        ('ns658', rdflib.term.URIRef(u'http://emeka.name.ng/')) ,
        ('ns689', rdflib.term.URIRef(u'http://dbpedia.org/resource/.')) ,
        ('ns987', rdflib.term.URIRef(u'http://abs.twimg.com/sticky/default_profile_images/')) ,
        ('ns988', rdflib.term.URIRef(u'http://kingsley.idehen.net/DAV/home/kidehen/onno_profile.ttl#')) ,
        (u'like', rdflib.term.URIRef(u'http://ontologi.es/like#')) ,
        (u'ns3520', rdflib.term.URIRef(u'http://purl.org/NET/googlevocab#')) ,
        (u'ns629', rdflib.term.URIRef(u'http://www.ecs.soton.ac.uk/~das05r/')) ,
        (u'ns635', rdflib.term.URIRef(u'http://www.ecs.soton.ac.uk/~')) ,
        (u'ns6581', rdflib.term.URIRef(u'http://emeka.name.ng/data/')) ,
        (u'pto', rdflib.term.URIRef(u'http://www.productontology.org/id/')) ,

        # next
        (u'ns5125', rdflib.term.URIRef(u'http://kingsley.idehen.net/DAV/home/kidehen/Public/AmazonS3/Profile/Basic-Identity-Claims-And-Profile-Document.ttl#')) ,
#        ('ns1477', rdflib.term.URIRef(u'http://deiu.me/profile#')) ,
#        (u'ns14591', rdflib.term.URIRef(u'http://bigbluehat.com/')) ,
] :
    prefix=p[0]
    url = p[1]
    process(prefix,url)

for (prefix,url) in namespace_manager.namespaces():
    
    if url not in seen:
        if 'http' in url :
            seen[url]=1
            print (prefix,url),","

        
g2.serialize("data/results.ttl", format="turtle")
g3.serialize("data/total.ttl", format="turtle")
