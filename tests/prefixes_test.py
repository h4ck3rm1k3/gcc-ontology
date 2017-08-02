#!/usr/bin/python
from __future__ import print_function
__global_test_data__=None

import sys
import pprint
import rdflib

from rdflib.namespace import Namespace

def global_test_data():
    if __global_test_data__ is not None :
        return __global_test_data__
    else:
        return rdflib.Graph()

def t3st_load_prefixes():
    g = global_test_data()
    #g.namespace_manager.
    for n in g.namespace_manager.namespaces():
        print (n)
        pass
        
