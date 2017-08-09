
import rdflib
from rdflib import Namespace
from ontology import Ontology

class MADS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.loc.gov/mads/rdf/v1#'))
    prefix = 'mads'
mads = MADS()
ontology = mads
