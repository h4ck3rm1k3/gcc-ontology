
import rdflib
from rdflib import Namespace
from ontology import Ontology

class FORMATS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/formats/'))
    prefix = 'formats'
formats = FORMATS()
ontology = formats
