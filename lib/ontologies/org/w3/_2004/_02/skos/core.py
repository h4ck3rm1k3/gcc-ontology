
import rdflib
from rdflib import Namespace
from ontology import Ontology

class SKOS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2004/02/skos/core#'))
    prefix = 'skos'
skos = SKOS()
ontology = skos
