
import rdflib
from ontology import Ontology

class SOLID(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/solid/terms#'))
    prefix = 'solid'
solid = SOLID()
ontology = solid
