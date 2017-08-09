
import rdflib
from rdflib import Namespace
from ontology import Ontology

class OV(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://open.vocab.org/terms/'))
    prefix = 'ov'
ov = OV()
ontology = ov
