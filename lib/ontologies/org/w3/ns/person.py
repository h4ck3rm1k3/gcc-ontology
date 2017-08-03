
import rdflib
from ontology import Ontology

class PERSON(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/person#'))
    prefix = 'person'
person = PERSON()
ontology = person
