import sys
sys.path.append("/home/mdupont/experiments/py-loadr-forkr-debugr")
sys.path.append("/home/mdupont/experiments/rdflib")
import forkr
import rdflib

g=rdflib.Graph()

g.load( "total.ttl", format="turtle")
g.load( "results.ttl" , format="turtle")
#g.load( "example_instance2_small.rdf")
#print forkr.__dict__
forkr.main(g)

