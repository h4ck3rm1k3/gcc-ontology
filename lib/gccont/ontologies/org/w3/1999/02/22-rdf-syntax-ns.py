
import rdflib
from gccont.ontology import Ontology

class RDF(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/1999/02/22-rdf-syntax-ns#'))
    prefix = 'rdf'
rdf = RDF()
ontology = rdf
