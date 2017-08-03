
import rdflib
from ontology import Ontology

class RECORDINFO(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://id.loc.gov/ontologies/RecordInfo#'))
    prefix = 'recordinfo'
recordinfo = RECORDINFO()
ontology = recordinfo
