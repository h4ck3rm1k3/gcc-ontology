
import rdflib
from rdflib import Namespace
from ontology import Ontology

class SKOSXL(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2008/05/skos-xl#'))
    prefix = 'skosxl'
skosxl = SKOSXL()
ontology = skosxl
