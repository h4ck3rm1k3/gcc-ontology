
import rdflib
from ontology import Ontology

class WGS84(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/2003/01/geo/wgs84_pos#'))
    prefix = 'wgs84'
wgs84 = WGS84()
ontology = wgs84
