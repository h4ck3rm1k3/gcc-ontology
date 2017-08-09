
import rdflib
from rdflib import Namespace
from ontology import Ontology

class VANN(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/vocab/vann/'))
    prefix = 'vann'
vann = VANN()
ontology = vann
