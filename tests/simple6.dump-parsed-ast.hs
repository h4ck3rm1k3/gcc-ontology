module TestFakeAst where
import FakeAst
f x = 
   
   
   
   (
   (HsModule
   (AJust
   ((ModuleName("Foo"))))
   (ANothing)
   (EmptyArray)
   (SomeArray([
   (
   (TyClD
   (DataDecl
   (
   (Unqual (OccName("Python"))))
   (HsQTvs
   (PlaceHolder)
   (EmptyArray)
   (PlaceHolder))
   (Prefix)
   (HsDataDefn
   (DataType)
   (NoLocationInfo
   (EmptyArray))
   (ANothing)
   (ANothing)
   (SomeArray([
   (
   (ConDeclH98
   (
   (Unqual (OccName("None"))))
   (ANothing)
   (AJust
   (NoLocationInfo
   (EmptyArray)))
   (PrefixCon
   (EmptyArray))
   (ANothing)))]))
   (NoLocationInfo
   (EmptyArray)))
   (PlaceHolder)
   (PlaceHolder)))),
   (
   (ValD
   (FunBind
   (
   (Unqual (OccName("emptyfunction"))))
   (MG
   (
   (SomeArray([
   (
   (Match
   (FunRhs
   (
   (Unqual (OccName("emptyfunction"))))
   (Prefix)
   (NoSrcStrict))
   (SomeArray([
   (
   (ConPatIn
   (
   (Exact (GHCPrimName("Tuple","()","w","d"))))
   (PrefixCon
   (EmptyArray))))]))
   (ANothing)
   (GRHSs
   (SomeArray([
   (
   (GRHS
   (EmptyArray)
   (
   (HsVar
   (
   (Unqual (OccName("None"))))))))]))
   (NoLocationInfo
   (EmptyLocalBinds)))))])))
   (EmptyArray)
   (PlaceHolder)
   (FromSource))
   (WpHole)
   (PlaceHolder)
   (EmptyArray))))]))
   (ANothing)
   (ANothing)))
   
