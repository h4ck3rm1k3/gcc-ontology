
import rdflib
from ontology import Ontology

class SPACE(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/pim/space#'))
    prefix = 'space'
space = SPACE()
ontology = space
