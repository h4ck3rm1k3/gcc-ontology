"""
generate a set of predicates flattening out the parameter list

gcc:89562 gcc:function_arg_00 gcc:89568.
gcc:89562 gcc:function_arg_01 gcc:89562.
gcc:89562 gcc:function_arg_01 gcc:89563.

"""
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
            d = d.replace('https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#','gcc:')
            data[ k]= d

        count = count + 1
        #pprint.pprint(data)
        b = data['b']

        for a in sorted(data) :
            if a != 'b':
                v = data[a]
                print "{b} gcc:{pred} {param}.".format(b=b,pred=a,param=v)
        
    return count

def param(x):
    return "?function_arg_{x2:02d}".format(x2=int(x))
    
def generate_param_query(size):
    
    sparql = """
    # SPARQL for {size}
    prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
    PREFIX gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#>
    PREFIX owl: <http://www.w3.org/2002/07/owl#>
    PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
    select distinct
    ?b
#    ?b_name_string
    """.format(size=size)
    
    for x in (xrange(0,size)):
        sparql = sparql + """
# ?b_args{x2}_name_string
        {x2}
        """.format(x2=param(x))

    sparql = sparql + "WHERE { "

    for y in (xrange(0,size)):
        if y > 0 :
            sparql = sparql + """
            {x} gcc:chain {x2}.
            """.format(x=param(y-1),x2=param(y))

                          
        sparql = sparql + """
        {x2}    rdf:type gcc:parm_decl.
        """.format(x2=param(y))
    # no parameter
    if size == 0 :
        sparql = sparql+ """filter not exists {{ ?b gcc:args {x}. }}.\n""".format(x=param(0))
        
    if size > 0:
        sparql = sparql+ """?b gcc:args {x}.\n""".format(x=param('0'))
        sparql = sparql+ """filter not exists {{ {x} gcc:chain {x2}. }}.\n""".format(
            x=param(size-1),
            x2=param(size))

    # functional body
    sparql = sparql + """
#                ?b rdf:type gcc:function_decl.
#                ?b gcc:scpe ?a.
#                ?b gcc:name ?b_name.
                ?b gcc:args {x}.
#                ?b_name gcc:strg ?b_name_string.
#                ?a rdf:type gcc:translation_unit_decl.
    }} ## where
    """.format(x=param('0'))
    #print sparql
    return runq(sparql)

print """@prefix gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#> ."""                    
#print  generate_param_query(0)
#print  generate_param_query(1)
for x in reversed(xrange(0,10)):
    #print "param {0}".format( x)
    c = generate_param_query(x)
    #if c > 0:
    #    print  "Found " + str(c) + " for "+ str(x)
