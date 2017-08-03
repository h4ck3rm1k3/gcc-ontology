
import rdflib
from ontology import Ontology

class LDP(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/ldp#'))
    prefix = 'ldp'
ldp = LDP()
ontology = ldp
