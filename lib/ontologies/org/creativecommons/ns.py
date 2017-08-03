
import rdflib
from ontology import Ontology

class CC(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://creativecommons.org/ns#'))
    prefix = 'cc'
cc = CC()
ontology = cc
