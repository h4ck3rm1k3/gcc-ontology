
import rdflib
from ontology import Ontology

class VOAF(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/vocommons/voaf#'))
    prefix = 'voaf'
voaf = VOAF()
ontology = voaf
