import rdflib
from rdflib import Namespace
from ontology import Ontology


# refactor circular definition to metaclass

class MetaClass():
    """
    The metaclass is used to replace the circular type of the rdfs.Class
    
    The idea is that the metaclass would be a recursive order metaclass where it is one higher than the previous level.
    
    """
    term = 'MetaClass'

## forward of rdfs class

class RDFS :
    """
    Forward definition of the rdfs.Class and Datatype used in the rdf namespace.
    To avoid circular definitions these parts are broken out and then the class is redefined later again.
    """
    class Class(MetaClass, ):
        term = 'Class'
    _class = Class()

    class Datatype(Class, ):
        term = 'Datatype'
    datatype = Datatype()


class RDF(Ontology, ):
  #  from rdfs import ontology as rdfs

    def __init__(self):
        Ontology.__init__(self, Namespace(u'http://www.w3.org/1999/02/22-rdf-syntax-ns#'))
    prefix = 'rdf'

    class Property(RDFS.Class):
        term = 'Property'
    property = Property()

    class LangString(RDFS.Datatype ):
        term = 'langString'
        base = None
    lang_string = LangString()

    class Seq( RDFS.Class):
        term = 'Seq'
    seq = Seq()

    class XmlLiteral( RDFS.Datatype ):
        term = 'XMLLiteral'
    xml_literal = XmlLiteral()

    class List(RDFS.Class, ):
        term = 'List'
    list = List()

    class Html(RDFS.Datatype, ):
        term = 'HTML'
    html = Html()

    class PlainLiteral(RDFS.Datatype, ):
        term = 'PlainLiteral'
    plain_literal = PlainLiteral()

    class Statement(RDFS.Class, ):
        term = 'Statement'
    statement = Statement()

    class Alt(RDFS.Class, ):
        term = 'Alt'
    alt = Alt()

    class Bag(RDFS.Class, ):
        term = 'Bag'
    bag = Bag()

    ## used

    class Subject(Property, ):
        term = 'subject'
    subject = Subject()

    class Value(Property, ):
        term = 'value'
    value = Value()

    class Predicate(Property, ):
        term = 'predicate'
    predicate = Predicate()

    class Object(Property, ):
        term = 'object'
    object = Object()

    class Nil(List, ):
        term = 'nil'
    nil = Nil()

    class Rest(Property, ):
        term = 'rest'
    rest = Rest()

    class Type(Property, ):
        term = 'type'
    type = Type()

    class First(Property, ):
        term = 'first'
    first = First()

class RDFS(Ontology, ):
#    from rdf import ontology as rdf

    def __init__(self):
        Ontology.__init__(self, Namespace(u'http://www.w3.org/2000/01/rdf-schema#'))
    prefix = 'rdfs'

# these two subclasses are defined again because the class is redefined
    class Class(MetaClass, ):
        term = 'Class'
    _class = Class()

    class Datatype(Class, ):
        term = 'Datatype'
    datatype = Datatype()

    class Comment(RDF.Property, ):
        term = 'comment'
    comment = Comment()

    class ContainerMembershipProperty(RDFS.Class, ):
        term = 'ContainerMembershipProperty'
    container_membership_property = ContainerMembershipProperty()

    class Domain(RDF.Property, ):
        term = 'domain'
    domain = Domain()

    class SubPropertyOf(RDF.Property, ):
        term = 'subPropertyOf'
    sub_property_of = SubPropertyOf()

    class Container(RDFS.Class, ):
        term = 'Container'
    container = Container()


    class Literal(RDFS.Class, ):
        term = 'Literal'
    literal = Literal()

    class Label(RDF.Property, ):
        term = 'label'
    label = Label()

    class Member(RDF.Property, ):
        term = 'member'
    member = Member()

    class Range(RDF.Property, ):
        term = 'range'
    range = Range()

    class IsDefinedBy(RDF.Property, ):
        term = 'isDefinedBy'
    is_defined_by = IsDefinedBy()

    class Resource(RDFS.Class, ):
        term = 'Resource'
    resource = Resource()

    class SubClassOf(RDF.Property, ):
        term = 'subClassOf'
    sub_class_of = SubClassOf()


    class SeeAlso(RDF.Property, ):
        term = 'seeAlso'
    see_also = SeeAlso()

rdfs = RDFS()
#ontology = rdfs

rdf = RDF()
ontology = rdf

##
x = rdfs.Class()
