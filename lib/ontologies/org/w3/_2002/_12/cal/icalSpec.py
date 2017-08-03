
import rdflib
from ontology import Ontology

class SPEC(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2002/12/cal/icalSpec#'))
    prefix = 'spec'
spec = SPEC()
ontology = spec
