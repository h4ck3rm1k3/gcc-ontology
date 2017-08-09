
import rdflib
from rdflib import Namespace
from ontology import Ontology

class ADMS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/adms#'))
    prefix = 'adms'
adms = ADMS()
ontology = adms
