
import rdflib
from rdflib import Namespace
from ontology import Ontology

class RDDL(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.rddl.org/purposes#'))
    prefix = 'rddl'
rddl = RDDL()
ontology = rddl
