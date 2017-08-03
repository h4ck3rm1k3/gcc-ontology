
import rdflib
from ontology import Ontology

class CHANGESET(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/vocab/changeset/schema#'))
    prefix = 'changeset'
changeset = CHANGESET()
ontology = changeset
