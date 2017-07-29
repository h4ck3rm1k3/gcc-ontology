
import rdflib
from gccont.ontology import Ontology

class XSD(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2001/XMLSchema#'))
    prefix = 'xsd'
xsd = XSD()
ontology = xsd
