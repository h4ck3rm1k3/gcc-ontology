
import rdflib
from gccont.ontology import Ontology

class NS83(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'adms:'))
    prefix = 'ns83'
ns83 = NS83()
ontology = ns83
