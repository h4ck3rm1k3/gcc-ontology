#
import rdflib
from rdflib import Graph
from rdflib.namespace import Namespace, NamespaceManager
class Ontology:
    def __init__(self, url):
        self.base=Namespace( url)
    def bind_this(self, namespace_manager):
        namespace_manager.bind(self.prefix, self.base, override=False)

