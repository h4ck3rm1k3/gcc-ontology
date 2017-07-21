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
    data = json.loads(r.text)
    count =  0
    for x in data['results']['bindings']:
        data = {}
        for k in x :
            d = x[k]['value']
            data[ k]= d
        count = count + 1
        pprint.pprint(data)
    return count
        
def generate_param_query(size):
    
    sparql = """
    # SPARQL for {size}
    prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
    PREFIX gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#>
    PREFIX owl: <http://www.w3.org/2002/07/owl#>
    PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
    select distinct
    ?b
    ?b_name_string
    """.format(size=size)
    
    for x in (xrange(0,size)):
        sparql = sparql + """?b_args{x2}_name_string
        """.format(x2=x)

    sparql = sparql + "WHERE { "

    for y in (xrange(0,size)):
        if y > 0 :
            sparql = sparql + """
            ?b_args{x} gcc:chain ?b_args{x2}.
            """.format(x=y-1,x2=y)

        sparql = sparql + """
            ?b_args{x2}_type_name gcc:strg ?b_args{x2}_type_name_string.
            ?b_args{x2}_type gcc:name* ?b_args{x2}_type_name.            
            ?b_args{x2} gcc:argt ?b_args{x2}_type.""".format(x2=y)
                          
        sparql = sparql + """
            ?b_args{x2}_name gcc:strg ?b_args{x2}_name_string.
            ?b_args{x2} gcc:name ?b_args{x2}_name.
            ?b_args{x2} rdf:type gcc:parm_decl.\n""".format(x2=y)
    # no parameter
    if size == 0 :
        sparql = sparql+ """filter not exists { ?b gcc:args ?b_args0. }.\n"""
        
    if size > 0:
        sparql = sparql+ """?b gcc:args ?b_args0.\n"""
        sparql = sparql+ """filter not exists {{ ?b_args{x} gcc:chain ?b_args{x2}. }}.\n""".format(x=size-1,x2=size)

    # functional body
    sparql = sparql + """
                ?b rdf:type gcc:function_decl.
                ?b gcc:scpe ?a.
                ?b gcc:name ?b_name.
                ?b gcc:args ?b_args0.
                ?b_name gcc:strg ?b_name_string.
                ?a rdf:type gcc:translation_unit_decl.
    } ## where
    """
    print sparql
    return runq(sparql)
                    
#print  generate_param_query(0)
#print  generate_param_query(1)
for x in reversed(xrange(0,10)):
    print "param {0}".format( x)
    c = generate_param_query(x)
    if c > 0:
        print  "Found " + str(c) + " for "+ str(x)
