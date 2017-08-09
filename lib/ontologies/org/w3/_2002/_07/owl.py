
import rdflib
from rdflib import Namespace
from ontology import Ontology

class OWL(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2002/07/owl#'))
    prefix = 'owl'
owl = OWL()
ontology = owl
