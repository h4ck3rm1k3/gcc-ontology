
import rdflib
from rdflib import Namespace
from ontology import Ontology

class GRDDL(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2003/g/data-view#'))
    prefix = 'grddl'
grddl = GRDDL()
ontology = grddl
