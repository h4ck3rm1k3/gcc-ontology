
import rdflib
from gccont.ontology import Ontology

class XML(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/XML/1998/namespace'))
    prefix = 'xml'
xml = XML()
ontology = xml
