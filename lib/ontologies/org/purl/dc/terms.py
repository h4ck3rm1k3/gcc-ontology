
import rdflib
from ontology import Ontology

class DC(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/dc/terms/'))
    prefix = 'dc'
dc = DC()
ontology = dc
