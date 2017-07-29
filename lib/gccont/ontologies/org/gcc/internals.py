from gccont.ontology import Ontology
class GCCInternals (Ontology):
    def __init__(self):
        Ontology.__init__(self,'http://github.com/h4ck3rm1k3/gcc-ontology/blob/master/gcc_internals.ttl#')
    prefix = 'gcci'
gcci = GCCInternals()
