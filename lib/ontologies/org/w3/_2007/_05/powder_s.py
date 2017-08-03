
import rdflib
from ontology import Ontology

class WDRS(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2007/05/powder-s#'))
    prefix = 'wdrs'
wdrs = WDRS()
ontology = wdrs
