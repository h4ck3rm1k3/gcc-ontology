#!/usr/bin/python
from __future__ import print_function
__global_test_data__=None

import sys
sys.path.append('lib')
import pprint
import rdflib
from gccont.ontologies.org.gcc.source import gccsrc
from gccont.ontologies.org.gcc.internals import gcci as gccint

def global_test_data():
    if __global_test_data__ is not None :
        return __global_test_data__
    else:
        return rdflib.Graph()

import logging

## start with an item, see how it relates to the other known items. create the relations to every other item. (matrix)
# find all the instances using that item in each position. (permutation)
# for two items,
#     s,p,o.
#     s,p,o1,s1,p2,o2

# using unparser
# create package
# create module
# create classes
# find all predicates (domains), make methods
# find all ranges that lead to this domain.


#source
#sort -n -r -k2 report.txt  | grep : | head -2000 > ranking.csv
def test_load_csv():

    logging.basicConfig()
    l = logging.getLogger("rdflib.term")
    g = global_test_data()
    ns = {}
    # bind this ontology
    gccsrc.bind_this(g.namespace_manager)
    gccint.bind_this(g.namespace_manager)
    #@prefix gcci: <http://github.com/h4ck3rm1k3/gcc-ontology/blob/master/gcc_internals.ttl#> .
    
    for prefix, ns2 in g.namespace_manager.namespaces():
        #print("debug namespace {0}:  {1}".format(prefix,ns2))
        ns[prefix]=ns2

    f =open ('data/ranking.csv')
    rank = 0
    
    for line in f.readlines():
        rank = rank + 1
        
        line = line.strip()
        parts = line.split(' ')
        url=parts[0]
        v=parts[1]
        parts2 = url.split(':')
        k = parts2[0]
        v2 = parts2[1]
        if rank > 1 :
            continue
        if k in ns:
            k2= ns[k]
            print ("Test",k2+str(v2))
        else:
            print ("other",k,v)

if __name__ == '__main__' :
    test_load_csv()
