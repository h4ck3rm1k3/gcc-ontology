
import rdflib
from ontology import Ontology

class RWW(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'https://cc.rww.io/vocab#'))
    prefix = 'rww'
rww = RWW()
ontology = rww
