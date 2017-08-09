
import rdflib
from rdflib import Namespace
from ontology import Ontology

class ACL(Ontology, ):

    def __init__(self):
        Ontology.__init__(self, rdflib.term.URIRef(u'http://www.w3.org/ns/auth/acl#'))
    prefix = 'acl'
acl = ACL()
ontology = acl
