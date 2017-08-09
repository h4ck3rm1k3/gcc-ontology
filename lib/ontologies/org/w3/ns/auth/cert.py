
import rdflib
from rdflib import Namespace
from ontology import Ontology

class AUTHCERT(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/auth/cert#'))
    prefix = 'authcert'
authcert = AUTHCERT()
ontology = authcert
