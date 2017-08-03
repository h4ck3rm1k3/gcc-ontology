
import rdflib
from ontology import Ontology

class SIOCN(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://rdfs.org/sioc/ns#'))
    prefix = 'siocn'
siocn = SIOCN()
ontology = siocn
