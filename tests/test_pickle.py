from __future__ import print_function
__global_test_data__=None
import pickle


import sys
import pprint
import rdflib
from rdflib.store import NodePickler
    
def global_test_data():
    if __global_test_data__ is not None :
        return __global_test_data__
    else:
        return rdflib.Graph()

def pickle_t3st():
    print ("test of node pickle")
    
    print (__global_test_data__)
    np = NodePickler()
    fil = open("testdata.pickle","w")
    fil.write (np.dumps(__global_test_data__))
    fil.close()
