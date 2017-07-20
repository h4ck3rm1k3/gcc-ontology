import requests
import urllib
import pprint

#url = 'query=
#d = urllib.unquote_plus(url)
#pprint.pprint(d)

print """
@prefix gcci: <http://github.com/h4ck3rm1k3/gcc-ontology/blob/master/gcc_internals.ttl#> .
@prefix btp: <http://github.com/h4ck3rm1k3/gcc-ontology/blob/master/body_type_predicates.ttl#> .
@prefix exp: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/example_instance.xml#> .
@prefix gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#> .
@prefix new: <http://github.com/h4ck3rm1k3/gcc-ontology/blob/master/gcc.ttl#> .
@prefix owl: <http://www.w3.org/2002/07/owl#> .
@prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
@prefix xml: <http://www.w3.org/XML/1998/namespace> .
@prefix xsd: <http://www.w3.org/2001/XMLSchema#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
<http://github.com/h4ck3rm1k3/gcc-ontology/blob/master/gcc_internals.ttl> rdf:type owl:Ontology .
"""
r = requests.post("http://new-host:8080/fuseki/gcc/query",
    data={
        'query' : """
        prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX gcc: <https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
select 
  ?b 
 ?b_name_string 
where {
  
  ?b rdf:type gcc:function_decl.
  ?b gcc:scpe ?a.
  ?b gcc:name ?b_name.
  ?b_name gcc:strg ?b_name_string.
 # ?a rdf:type gcc:translation_unit_decl.
 
   }
limit 100000
    """
    },
    headers={
        "Accept": "application/sparql-results+json"
    },
    cookies={},
)
import json
data = json.loads(r.text)
for x in data['results']['bindings']:
    url = x['b']['value']
    url = url.replace('https://h4ck3rm1k3.github.io/gogccintro/gcc/ontology/2017/05/20/gcc_compiler.owl#','gcc:')
    name = x['b_name_string']['value']
    print "{url} a gcc:func_decl; rdfs:label \"\"\"{s}\"\"\".".format(url=url,s=name)
#    print "gcci:{s} a gcc:func_decl; owl:sameAs {url}.".format(url=url,s=name) 
    
    
