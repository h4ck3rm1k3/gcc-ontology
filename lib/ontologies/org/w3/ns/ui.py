
import rdflib
from ontology import Ontology

class UI(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/ui#'))
    prefix = 'ui'
ui = UI()
ontology = ui
