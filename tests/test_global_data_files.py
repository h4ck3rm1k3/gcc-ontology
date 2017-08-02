from __future__ import print_function
__global_test_data__=None
import rdflib
from gccont.ontologies.org.gcc.source import gccsrc
from gccont.ontologies.org.gcc.internals import gcci as gccint

def load_test():
    pass

def get_global_data():
    if __global_test_data__ is not None :
        g = __global_test_data__       
        gccsrc.bind_this(g.namespace_manager)
        gccint.bind_this(g.namespace_manager)
        return g
    else:
        print ("Did not find global data, starting an empty graph")
        return rdflib.Graph()
