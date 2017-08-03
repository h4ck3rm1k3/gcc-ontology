
import rdflib
from ontology import Ontology

class AIRPORT(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.megginson.com/exp/ns/airports#'))
    prefix = 'airport'
airport = AIRPORT()
ontology = airport
