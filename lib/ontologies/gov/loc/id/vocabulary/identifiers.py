
import rdflib
from rdflib import Namespace
from ontology import Ontology

class VOCAB(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://id.loc.gov/vocabulary/identifiers/'))
    prefix = 'vocab'
vocab = VOCAB()
ontology = vocab
