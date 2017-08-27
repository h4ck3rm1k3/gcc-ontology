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
   (ValD
   (FunBind
   (
   (Unqual (OccName("f"))))
   (MG
   (
   (SomeArray([
   (
   (Match
   (FunRhs
   (
   (Unqual (OccName("f"))))
   (Prefix)
   (NoSrcStrict))
   (SomeArray([
   (
   (VarPat
   (
   (Unqual (OccName("x"))))))]))
   (ANothing)
   (GRHSs
   (SomeArray([
   (
   (GRHS
   (EmptyArray)
   (
   (HsOverLit
   (OverLit
   (HsIntegral
   (IL
   (SourceText "1")
   (False)
   (1)))
   (PlaceHolder)
   (HsLit
   (HsString
   (SourceText "noExpr") FastString("noExpr")))
   (PlaceHolder))))))]))
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
   
