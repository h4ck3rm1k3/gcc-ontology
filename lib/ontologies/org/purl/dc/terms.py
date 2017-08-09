
import rdflib
from rdflib import Namespace
from ontology import Ontology

class DCT(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/dc/terms/'))
    prefix = 'dct'
dct = DCT()
ontology = dct
