import pprint
from collections import Counter
from types import ListType, DictType, StringType, NoneType, IntType

aobjectcount = 0
types = {}
print """
main :: IO()
main = do 
    print eval_module
"""

def declare_type(name):
    if name not in types:
        types[name ]=1
        print name + " x = (\"" + name + "\", x)"

def temp_object(name):
    global aobjectcount
    aobjectcount = aobjectcount + 1
    sym = "{0}_{1}".format(name,aobjectcount)
    declare_type(name)
    
    print sym + " x = (" + name + " x)"
    return sym

def list(x,indent="  "):
    declare_type("alist")
    ret =  "alist("
    count = 0 
    for i in x:

        if count > 0:
            ret += ","
        declare_type("achain")
        ret += "\n" +  indent +  " achain(" + rec(i, indent=indent + "  ") + ")"
        
        count = count + 1
        
    ret += indent +  ")"
    return ret




def rec(x,indent="  "):
    atype = {}
    declare_type("arecord")
    ret =  "arecord("
    count = 0
    
    for k in x:

        if count > 0:
            ret += ","
        count = count + 1
        
        v = x[k]
        t = type (v)

        # rename things starting with _
        if k.startswith("_"):
            k = "a" + k
        atype[k]=1            
        if t == ListType:
            #print "list",k
            declare_type("setattr")
            ret += "\n" + indent + "  setattr(\"{name}\", {tempname} ({value}))".format(
                tempname = temp_object("attribute_{name}_type_list".format(name=k)),
                name=k,
                value=list(v,indent=indent + "  "))
            
        elif t == NoneType:
            declare_type("nilattr")
            ret += "\n" + indent + "  nilattr(\"{name}\")".format(name=k)
        elif t == StringType:
            #print "Str",k, v
            declare_type("setstr")
            ret += "\n" + indent + "  setstr(\"{name}\",\"{value}\")".format(name=k,value=v.replace('"',"").replace("\n",''))
        elif t == IntType:
            #print "Int",k, v
            declare_type("setint")
            ret += "\n" + indent + "  setint(\"{name}\",{value})".format(name=k,value=v)
        elif t == DictType:
            #print "Dict",k
            #rec(v)
            declare_type("setrec")
            ret += "\n" + indent + "  setrec(\"{name}\", {value})".format(name=k,value=rec(v, indent=indent + "  "))
        
    ret += indent + ")"
    
    typename = temp_object("record_type_{name}".format(name="_".join(sorted(atype.keys()))))

    
    return typename + "(" + ret + ")"

    
def Module(**x):
    # on1
    #pprint.pprint(x)
    y= rec(x,"  ")
    print "eval_module=",y
    return y

def Expr(**x):
    ##pprint.pprint(x)
    #y =  "expr " + rec(x)
    #print y
    return x

def Call(**x):
    #print "Call"
    #pprint.pprint(x) # lots
    #return {"Call":x}
    #y =  "call " + rec(x)
    #print y
    return {'code' : x}

nc = Counter()    
def Name(ctx, id):
    #print "name",ctx,id
    #pprint.pprint(x) # lots
    nc[id] +=1
    #return  {"ctx":ctx,"id":id}
    return  id

def Load():
    return "Ld" # meaningless
    #pprint.pprint(x) # lots

kc = Counter()
nkc = Counter()

from collections import defaultdict
dct = defaultdict(Counter)

def keyword(**x):
    #print "Kw"
    #pprint.pprint(x) # lots
    a = x['arg']
    v = x['value']
    #print a
    kc[a]+=1

    #dct[a][v]+1
        
    return x #{"_KW":x}

def List(**x):
    #print "List"
    #pprint.pprint(x) # lots
    return {"_list":x}

sc = Counter()    
def Str(s):
    sc[s] += 1
    #print s
    #pprint.pprint(x)
    return s

def Num(n):
    #pprint.pprint(x)
    return n

def report():
                #for sym in tables:
                #print sym
    pass
    # #for x in sc:
    # #    v = sc[x]
    # #    print v,x[0:10]
    # m ={"Strings":sc,
    #  "Names":nc,
    #     #"KeyWordNames":nkc,
    #  "KeyWord":kc,}

    # for k in dct:
    #     for c in  dct[k]:
    #         v = m[c]
    #         print "report", c
    #         for letter, count in v.most_common(20):
    #             print '\t%s: %7d' % (letter, count)
    # #bpprint.pprint(sc)

    # for c in  m:
    #     v = m[c]
    #     print "report", c
    #     for letter, count in v.most_common(20):
    #         print '\t%s: %7d' % (letter, count)
    # #bpprint.pprint(sc)
    
import atexit
atexit.register(report)
