
import rdflib
from rdflib import Namespace
from ontology import Ontology

class SCHEMAORGS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'https://schema.org/'))
    prefix = 'schemaorgs'
schemaorgs = SCHEMAORGS()
ontology = schemaorgs
