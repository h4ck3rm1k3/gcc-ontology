import requests
import urllib
import pprint
import json

def runq(sparql, key, value):
    r = requests.post("http://new-host:8080/fuseki/gcc/query",
                      data={
                          'query' : sparql
                      },
                      headers={
                          "Accept": "application/sparql-results+json"
                      },
                      cookies={},
    )
    xx = r.text
    #print xx
    data = json.loads(xx)
    count =  0
    dmap =  {}
    
    for x in data['results']['bindings']:
        data = {}
        for k in x :
            d = x[k]['value']
            data[ k]= d

        count = count + 1
        dmap[data['key']]=data['value']

    return dmap
        
def generate_query(key, value):
    
    y = 0
    sparql = """
    # SPARQL 
    prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
    PREFIX gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#>
    PREFIX owl: <http://www.w3.org/2002/07/owl#>
    PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

    select distinct
    ?value
    ?key

    WHERE { 
     ?key gcc:srcp ?value.
    }
    """
    #print sparql
    return runq(sparql, key, value)
                    
print """@prefix gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#> ."""

c = generate_query("key","value")
for x in c:
    v = c[x]

    v = v.replace('<built-in>','gcc-built-in')
    v = v.replace(':','.owl#')

    print "<{key}> rdfs:isDefinedBy <https://h4ck3rm1k3.github.io/gogccintro/gcc/source/{val}>.".format(key=x,val=v)
