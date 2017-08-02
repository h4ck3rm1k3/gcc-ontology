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

def load_pickle_t3st():
    print ("test of node pickle loading")
    
    print (__global_test_data__)
    np = NodePickler()
    fil = open("testdata.pickle")
    #fil.read (np.loads(__global_test_data__))
    o = pickle.load(fil)
    fil.close()

if __name__ == '__main__' :
    load_pickle_t3st()
