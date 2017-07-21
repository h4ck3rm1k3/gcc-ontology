import requests
import urllib
import pprint
import json

def runq(sparql):
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
    print xx
    data = json.loads(xx)
    count =  0
    for x in data['results']['bindings']:
        data = {}
        for k in x :
            d = x[k]['value']
            data[ k]= d
        count = count + 1
        pprint.pprint(data)
    return count
        
def generate_param_query():
    
    y = 0
    sparql = """
    # SPARQL 
    prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
    PREFIX gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#>
    PREFIX owl: <http://www.w3.org/2002/07/owl#>
    PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

    select distinct

    ?b_args_type_name
    ?b_args_type_name_string
    ?b_args_type
    ?b_args 
    ?b_args_name 
    ?b_args_name_string

    WHERE { 
     ?b_args_type_name gcc:strg ?b_args_type_name_string.
     ?b_args_type gcc:name* ?b_args_type_name.            
     ?b_args gcc:argt ?b_args_type.
     ?b_args_name gcc:strg ?b_args_name_string.
     ?b_args gcc:name* ?b_args_name.
     ?b_args rdf:type gcc:parm_decl.
    }
    """
    print sparql
    return runq(sparql)
                    

c = generate_param_query()
