
import rdflib
from ontology import Ontology

class FOAF(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://xmlns.com/foaf/0.1/'))
    prefix = 'foaf'
foaf = FOAF()
ontology = foaf
