
import rdflib
from ontology import Ontology

class DOAP(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://usefulinc.com/ns/doap#'))
    prefix = 'doap'
doap = DOAP()
ontology = doap
