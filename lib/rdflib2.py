import sys
sys.path.append("/home/mdupont/experiments/py-loadr-forkr-debugr")
import forkr
import rdflib

g=rdflib.Graph()

g.load( "example_instance2.rdf" )
#g.load( "example_instance2_small.rdf")
#print forkr.__dict__
forkr.main(g)

