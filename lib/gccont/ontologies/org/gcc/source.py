from gccont.ontology import Ontology
class GCCSrc (Ontology):
    def __init__(self):
        Ontology.__init__(self,'https://h4ck3rm1k3.github.io/gogccintro/gcc/')
    prefix = 'gccsrc'
#self.bind("xml", "http://www.w3.org/XML/1998/namespace")
gccsrc = GCCSrc()
