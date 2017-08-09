
import rdflib
from rdflib import Namespace
from ontology import Ontology

class DCAM(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/dc/dcam/'))
    prefix = 'dcam'
dcam = DCAM()
ontology = dcam
