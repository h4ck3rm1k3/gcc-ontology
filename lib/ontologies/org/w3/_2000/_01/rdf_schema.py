
import rdflib
from rdflib import Namespace
from ontology import Ontology

class RDFS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2000/01/rdf-schema#'))
    prefix = 'rdfs'
rdfs = RDFS()
ontology = rdfs
