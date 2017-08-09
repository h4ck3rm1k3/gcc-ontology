
import rdflib
from rdflib import Namespace
from ontology import Ontology

class MVCB(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://webns.net/mvcb/'))
    prefix = 'mvcb'
mvcb = MVCB()
ontology = mvcb
