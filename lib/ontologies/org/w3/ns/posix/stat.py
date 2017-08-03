
import rdflib
from ontology import Ontology

class POSIX(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/posix/stat#'))
    prefix = 'posix'
posix = POSIX()
ontology = posix
