
import rdflib
from ontology import Ontology

class VS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2003/06/sw-vocab-status/ns#'))
    prefix = 'vs'
vs = VS()
ontology = vs
