
import rdflib
from rdflib import Namespace
from ontology import Ontology

class DOC(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2000/10/swap/pim/doc#'))
    prefix = 'doc'
doc = DOC()
ontology = doc
