import sys
fn = sys.argv[1]
f = open (fn)
import re
text = ""
for l in f.readlines():
    l= l.strip()

    if l == '==================== Parser AST ====================':
        continue
    l = l.replace("(Nothing)","(ANothing)")
    l = l.replace("(Just","(AJust")
    l = l.replace("[]","(EmptyArray)")
    l = l.replace("[","(SomeArray([")
    l = l.replace("]","]))")
            
    if l.endswith('UTC'):
        continue
    m = re.search("\{ModuleName: ([^\}]+)\}",l)
    if m :
        n = m.group(1)
        n2 = m.group(0)
        #print n2,n
        #print l
        l = l.replace(n2,"(ModuleName(\"{}\"))".format(n))
        
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
    else:
        m = re.search("\{([^}]+)\}",l)
        if m :
            #print l
            toreplace = m.group(0)
            g = m.group(1)
            if g == ' <no location info> ' :
                g = 'NoLocationInfo'
            else:
                o = re.match('OccName: (.+)',g)
                if o:
                    g = "(OccName(\"{}\"))".format(o.group(1))
                else:
                    o = re.match(' (.+\.hs):(\d+):([^\s]+)',g)
                    if o:
                        #g = "checkSrc (Source(\"{}\",\"{}\",\"{}\"))".format(o.group(1),o.group(2),o.group(3))
                        g = ""
                    else:
                        o = re.match(' (.+\.hs):\((\d+,\d+)\)-\((\d+,\d+)\)',g)
                        if o:
                            g = "" #"checkSrc2 (Source2(\"{}\",{},\"{}\"))".format(o.group(1),o.group(2),o.group(3))
                        else:
                            o = re.match('FastString: \"(.+)\"',g)
                            if o:
                                g = "FastString(\"{}\")".format(o.group(1))
                            else:
                                o = re.match('FastString:(.+)',g)
                                if o:
                                    g = "FastString(\"{}\")".format(o.group(1))
                                else:
                                    raise Exception("'{}'".format(g))
            l = l.replace(toreplace,g) #            print g
            
        else:
            pass
    #print l
    text = text + "\n   "+ l
print "module TestFakeAst where"    
print "import FakeAst"
print "f x = {}".format(text)
