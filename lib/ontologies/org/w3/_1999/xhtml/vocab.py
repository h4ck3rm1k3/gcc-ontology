
import rdflib
from ontology import Ontology

class HTML(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/1999/xhtml/vocab#'))
    prefix = 'html'
html = HTML()
ontology = html
