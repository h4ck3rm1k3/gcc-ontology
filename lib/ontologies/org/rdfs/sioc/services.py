
import rdflib
from ontology import Ontology

class SIOCS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://rdfs.org/sioc/services#'))
    prefix = 'siocs'
siocs = SIOCS()
ontology = siocs
