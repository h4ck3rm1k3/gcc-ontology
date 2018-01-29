import sys
import re
import pprint 
print '{-# LANGUAGE CPP #-}'
print '{-# LANGUAGE DeriveDataTypeable #-}'
print 'module TestFakeAst where'
print 'import FakeAstCore'

def prim_empty_array(l):
        #'Name: ghc-prim:GHC.Types.(EmptyArray){(w) d 6x'
        m = re.search("Name: ghc-prim:GHC.(\w+)\.(\(\w+\))\{\((\w+)\)\s+(\w+)\s+(\w+)",l)
        if m :
            g = m.group(1)
            g2 = m.group(2)
            g3 = m.group(3)
            g4 = m.group(4)
            g5 = m.group(5)
            g = ("(GHCPrimName \"{}\",\"{}\",\"{}\",\"{}\" )".format(g,g2,g3,g4,g5))
            g0 = m.group(0)
            l = l.replace(g0,g)
            return l
        else:
            return False

##################################        
relist = []
for x in ['([\-\/\.\w]+\.hs)',
          '/tmp/([\-\/\.\w]+\.hspp)',
          '([\-\/\.\w]+\.hspp)']:

    for y in [
            '(\d+):([\d]+)',
            '(\d+):([\d]+\-[\d]+)',
            '\((\d+,\d+)\)\-\((\d+,\d+)\)',
            '(\d+):(\d+)',
            '(\d+):(\d+\-\d+)',
            '\((\d+,\d+)\)\-\((\d+,\d+)\)']:
        r = "({{\s*{reg}:{lines}\s*}})".format(reg=x,lines=y)
        print " --  RE", r
        r2 = re.compile(r)
        relist.append(r2)
        
##################################
re1list= []
for x in [
        '(\{(ModuleName): ([\.\w]+)\})',
        '(\{(OccName):\s+([^}]+)\})',
        '(\{(FastString): \"([^"]*)\"\})',
#        '(\{(Name):([^}]+)\})',
#        '(\{(Name): ([^\s]+))',
        '(\{(FastString)\"([^"]+)\"\})']:
    print " -- parse",x
    r = re.compile(x)
    re1list.append(r)

structlist= []
for x in [
        '(\{(Bag)([^}]+)\})',
        '(\{\((w)\)([^}]+)\})',
#        '(\{(Name):([^}]+)\})',
]:
    r = re.compile(x)
    structlist.append(r)  

re2list= []
for x in [
        '(\{(Name):([^}]+)\})',
]:
    print " -- parse",x
    r = re.compile(x)
    re2list.append(r)

re3list= []
for x in [
        '(\[([^\]]+)\])',
]:
    print " -- parse",x
    r = re.compile(x)
    re3list.append(r)


def process_src(l):
    for x in relist:        
        for o in re.findall(x,l):
            new = " (checkSrc(source(\"{}\",\"{}\",\"{}\"))) ".format(o[1],o[2],o[3])
            #l = l.replace(o[0],new)
            l = l.replace(o[0],"") # strip out sources for now
    l = l.replace('{ <no location info> }','(NoLocationInfo)')
    ## pattern includes then name of the object to create and the one value

    for x in re1list:        
        for o in re.findall(x,l):
            new = " ({name} \"{value}\")".format(name=o[1].lower(),value=o[2])
            l = l.replace(o[0],new)

    for x in structlist:        
        for o in re.findall(x,l):
            new = " (Struct{name} {value})".format(name=o[1].lower(),value=o[2])
            l = l.replace(o[0],new)

    for x in re2list:        
        for o in re.findall(x,l):
            new = " (Name{name} \"{value}\")".format(name=o[1].lower(),value=o[2])
            l = l.replace(o[0],new)

    #for x in re3list:
    #    for o in re.findall(x,l):
            #new = " (SomeArray [{value}])".format(value=o[1])
    #        l = l.replace(o[0],new)

    return l

def pre(l):


    l2 = prim_empty_array(l)
    if l2 is not False:
        return l2

    ####
    m = re.search("\{Name: ghc-prim:GHC.(\w+)\.(..)\{\((\w+)\)\s+(\w+)\s+(\w+)\}\}",l)
    if m :
        g = m.group(1)
        g2 = m.group(2)
        g3 = m.group(3)
        g4 = m.group(4)
        g5 = m.group(5)
        g = ("(GHCPrimName(\"{}\",\"{}\",\"{}\",\"{}\"))".format(g,g2,g3,g4,g5))
        g0 = m.group(0)
        l = l.replace(g0,g)
        return l 
    
def cleanup(l):
    l = l.replace("(Nothing)","(ANothing)")
    l = l.replace("(Just","(AJust")
    #l = l.replace("[]","(EmptyArray)")

#    l = l.replace("]","]))")
#    if '{' in l :
#        print "Check", l
#    l = l.replace("(","\n    (")
    return l

def process (fn):
    f = open (fn)
    print "-- Processing ", fn
    fname= fn.replace("/","_").replace(".","_").replace("-","_")
    
    text = ""
    for l in f.readlines():
        l= l.strip()
        if l == '==================== Parser AST ====================':
            continue        
        if l.endswith('UTC'):
            continue    
        text = text + str(l) 
    text = process_src(text)
    text = cleanup(text)

    print "f{fname} x = {text}".format(fname=fname, text=text)

for fn in sys.argv[1:]:
    process (fn)
