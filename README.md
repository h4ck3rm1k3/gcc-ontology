# gcc-ontology
GNU Compiler Collection OWL Ontology

## example data 
https://gist.github.com/h4ck3rm1k3/e1b4cfa58c4dcdcfc18cecab013cc6c9/revisions

# Problems

There are some hard coded paths that have to be removed.

# Testing

The forkr lib is used to load a large file via the entry point

     python rdflib2.py

you will see statements like __global_test_data__=None
and  if __global_test_data__ is not None :

This is where the global graph data is loaded in from the testing framework.