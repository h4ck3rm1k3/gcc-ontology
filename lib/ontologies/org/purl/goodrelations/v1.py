
import rdflib
from ontology import Ontology

class GR(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://purl.org/goodrelations/v1#'))
    prefix = 'gr'
gr = GR()
ontology = gr
