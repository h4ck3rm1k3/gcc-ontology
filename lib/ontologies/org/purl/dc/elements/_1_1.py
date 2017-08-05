
import rdflib
from ontology import Ontology

class DC(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/dc/elements/1.1/'))
    prefix = 'dc'
dc = DC()
ontology = dc
