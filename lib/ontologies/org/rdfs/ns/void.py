
import rdflib
from ontology import Ontology

class VOID(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://rdfs.org/ns/void#'))
    prefix = 'void'
void = VOID()
ontology = void
