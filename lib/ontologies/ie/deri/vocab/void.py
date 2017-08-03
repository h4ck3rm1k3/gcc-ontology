
import rdflib
from ontology import Ontology

class VOID2(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://vocab.deri.ie/void#'))
    prefix = 'void2'
void2 = VOID2()
ontology = void2
