
import rdflib
from ontology import Ontology

class VCARD2006(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2006/vcard/ns#'))
    prefix = 'vcard2006'
vcard2006 = VCARD2006()
ontology = vcard2006
