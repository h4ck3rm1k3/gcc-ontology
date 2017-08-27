module TestFakeAst where
import FakeAst
f x = 
   
   
   
   (
   (HsModule
   (AJust
   ((ModuleName("TestFakeAst"))))
   (ANothing)
   (SomeArray([
   (
   (ImportDecl
   (NoSourceText)
   ((ModuleName("FakeAst")))
   (ANothing)
   (False)
   (False)
   (False)
   (False)
   (ANothing)
   (ANothing)))]))
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
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsModule"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ModuleName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"FakeAst\"") FastString("FakeAst"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("TyClD"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("DataDecl"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsQTvs"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("Prefix"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsDataDefn"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("DataType"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsModule\"") FastString("HsModule"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"MyFuncF\"") FastString("MyFuncF"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"OccName\"") FastString("OccName"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsParTy"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))]))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Match\"") FastString("Match"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"PlaceHolder\"") FastString("PlaceHolder"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"WpHole\"") FastString("WpHole"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"FromSource\"") FastString("FromSource"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"MG\"") FastString("MG"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Unqual\"") FastString("Unqual"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"FunBind\"") FastString("FunBind"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"ValD\"") FastString("ValD"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"EmptyLocalBinds\"") FastString("EmptyLocalBinds"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"SourceText\"") FastString("SourceText"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsString\"") FastString("HsString"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsLit\"") FastString("HsLit"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"IL\"") FastString("IL"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Bool\"") FastString("Bool")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Integer\"") FastString("Integer"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsIntegral\"") FastString("HsIntegral"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"OverLit\"") FastString("OverLit"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsOverLit\"") FastString("HsOverLit"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"GRHS\"") FastString("GRHS"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"GRHSs\"") FastString("GRHSs"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"FunRhs\"") FastString("FunRhs"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Prefix\"") FastString("Prefix"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"NoSrcStrict\"") FastString("NoSrcStrict"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"NoLocationInfo\"") FastString("NoLocationInfo"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"FastString\"") FastString("FastString"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Source\"") FastString("Source"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTupleTy"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("HsBoxedOrConstraintTuple"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))])))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))])))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))]))))))))))))))))]))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"VarPat\"") FastString("VarPat"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"ModuleName\"") FastString("ModuleName"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"ANothing\"") FastString("ANothing"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"AJust\"") FastString("AJust"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"CheckSource\"") FastString("CheckSource"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"EmptyArray\"") FastString("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"SomeArray\"") FastString("SomeArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsListTy"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))))))))]))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"PrefixCon\"") FastString("PrefixCon"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsVar\"") FastString("HsVar"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"ConDeclH98\"") FastString("ConDeclH98"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"DataType\"") FastString("DataType"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"DataDecl\"") FastString("DataDecl"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsDataDefn\"") FastString("HsDataDefn"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsQTvs\"") FastString("HsQTvs"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"TyClD\"") FastString("TyClD"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"GHCPrimName\"") FastString("GHCPrimName"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTupleTy"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("HsBoxedOrConstraintTuple"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))])))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))])))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))])))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppsTy"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsAppPrefix"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"String\"") FastString("String"))))))))))))))))))))))))))))]))))))))))))))))]))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Exact\"") FastString("Exact"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"ConPatIn\"") FastString("ConPatIn"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"ImportDecl\"") FastString("ImportDecl"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Bool\"") FastString("Bool")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Bool\"") FastString("Bool")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Bool\"") FastString("Bool")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Bool\"") FastString("Bool")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsPar\"") FastString("HsPar"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsApp\"") FastString("HsApp"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsTyVar\"") FastString("HsTyVar"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"NotPromoted\"") FastString("NotPromoted"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsParTy\"") FastString("HsParTy"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsAppsTy\"") FastString("HsAppsTy"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsAppPrefix\"") FastString("HsAppPrefix"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsTupleTy\"") FastString("HsTupleTy"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsBoxedOrConstraintTuple\"") FastString("HsBoxedOrConstraintTuple"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsListTy\"") FastString("HsListTy"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsDerivingClause\"") FastString("HsDerivingClause"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"HsIB\"") FastString("HsIB"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Foo\"") FastString("Foo"))))))))))))))))))))))]))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing")))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ConDeclH98"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"NoSourceText\"") FastString("NoSourceText"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("AJust"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("PrefixCon"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))))))]))))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsDerivingClause"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsIB"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsTyVar"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NotPromoted"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"Show\"") FastString("Show"))))))))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder"))))))))))))]))))))))))))))))))]))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder")))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("ValD"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("FunBind"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"checkSrc\"") FastString("checkSrc"))))))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("MG"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Match"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("FunRhs"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"checkSrc\"") FastString("checkSrc"))))))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("Prefix"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("NoSrcStrict"))))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("VarPat"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"x\"") FastString("x")))))))))))))))))))))),
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("VarPat"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"y\"") FastString("y"))))))))))))))))))))))]))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("GRHSs"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("SomeArray"))))))
   (
   (HsPar
   (
   (ExplicitList
   (PlaceHolder)
   (ANothing)
   (SomeArray([
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("GRHS"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsApp"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsApp"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsVar"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"CheckSource\"") FastString("CheckSource"))))))))))))))))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsVar"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"x\"") FastString("x"))))))))))))))))))))))))))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("HsVar"))))))
   (
   (HsPar
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("Unqual"))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("OccName"))))))
   (
   (HsPar
   (
   (HsLit
   (HsString
   (SourceText "\"y\"") FastString("y"))))))))))))))))))))))))))))))))))]))))))))))))
   (
   (HsPar
   (
   (HsApp
   (
   (HsVar
   (
   (Unqual (OccName("NoLocationInfo"))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyLocalBinds"))))))))))))))))))))))]))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("FromSource"))))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("WpHole"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("PlaceHolder"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("EmptyArray"))))))))))))))))))]))))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))
   (
   (HsPar
   (
   (HsVar
   (
   (Unqual (OccName("ANothing"))))))))))))))))]))
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
   
