from __future__ import print_function
import pickle
import sys
import pprint
import rdflib
from rdflib.store import NodePickler
import test_global_data_files
import sys
sys.path.append('lib')
import pprint
import rdflib
from gccont.ontologies.org.gcc.source import gccsrc
from gccont.ontologies.org.gcc.internals import gcci as gccint

def list_test():
    print ("test of getting global data")
    g = test_global_data_files.get_global_data()
    print (g)
    #print (dir(g))
    #print (g.__dict__)
    #for c in g.triples((None,RDF._type,func_decl)):
        
