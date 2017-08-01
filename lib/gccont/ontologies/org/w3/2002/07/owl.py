import rdflib
from gccont.ontology import Ontology
#from gccont.ontology import ObjectProperty

class OWL (Ontology):
    def __init__(self):
        Ontology.__init__(self,'http://www.w3.org/2002/07/owl#')

    prefix = "owl"
    
    #NamedIndividual =  rdflib.term.URIRef(rdflib.term.URIRef(base + 'NamedIndividual'))

    # owl:NamedIndividual a rdfs:Class ;
    #      rdfs:label "NamedIndividual" ;
    #           rdfs:comment "The class of named individuals." ;
    #                rdfs:isDefinedBy <http://www.w3.org/2002/07/owl#> ;
    #                     rdfs:subClassOf owl:Thing .
                        
    
owl = OWL()
ontology = OWL()
