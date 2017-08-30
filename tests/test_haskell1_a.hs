module Foo where
import Language.Haskell.Exts.Syntax
import Language.Haskell.Exts.SrcLoc
import Helper
--import FakeAst
f x =
    parseOK(Module (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 1 6 1, srcInfoPoints = [SrcSpan "test_haskell1.hs" 1 1 1 1,SrcSpan "test_haskell1.hs" 1 1 1 1,SrcSpan "test_haskell1.hs" 1 1 1 1,SrcSpan "test_haskell1.hs" 2 1 2 1,SrcSpan "test_haskell1.hs" 3 1 3 1,SrcSpan "test_haskell1.hs" 5 1 5 1,SrcSpan "test_haskell1.hs" 6 1 6 1,SrcSpan "test_haskell1.hs" 6 1 6 1]}) Nothing [] [] [TypeSig (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 1 1 32, srcInfoPoints = [SrcSpan "test_haskell1.hs" 1 5 1 7]}) [Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 1 1 4, srcInfoPoints = []}) "foo"] (
    TyForall (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 8 1 32, srcInfoPoints = []}) Nothing (
    Just (
    CxSingle (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 8 1 21, srcInfoPoints = [SrcSpan "test_haskell1.hs" 1 19 1 21]}) (
    ClassA (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 8 1 21, srcInfoPoints = [SrcSpan "test_haskell1.hs" 1 19 1 21]}) (
    UnQual (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 8 1 16, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 8 1 16, srcInfoPoints = []}) "Foldable")) [TyVar (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 17 1 18, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 17 1 18, srcInfoPoints = []}) "t")]))) (
    TyFun (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 22 1 32, srcInfoPoints = [SrcSpan "test_haskell1.hs" 1 26 1 28]}) (
    TyApp (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 22 1 25, srcInfoPoints = []}) (
    TyVar (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 22 1 23, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 22 1 23, srcInfoPoints = []}) "t")) (
    TyVar (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 24 1 25, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 24 1 25, srcInfoPoints = []}) "a"))) (
    TyCon (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 29 1 32, srcInfoPoints = []}) (
    UnQual (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 29 1 32, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 1 29 1 32, srcInfoPoints = []}) "Int"))))),FunBind (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 1 2 17, srcInfoPoints = []}) [Match (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 1 2 17, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 1 2 4, srcInfoPoints = []}) "foo") [PVar (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 5 2 6, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 5 2 6, srcInfoPoints = []}) "x")] (
    UnGuardedRhs (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 7 2 17, srcInfoPoints = [SrcSpan "test_haskell1.hs" 2 7 2 8]}) (
    App (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 9 2 17, srcInfoPoints = []}) (
    Var (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 9 2 15, srcInfoPoints = []}) (
    UnQual (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 9 2 15, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 9 2 15, srcInfoPoints = []}) "length"))) (
    Var (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 16 2 17, srcInfoPoints = []}) (
    UnQual (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 16 2 17, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 2 16 2 17, srcInfoPoints = []}) "x"))))) Nothing],PatBind (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 3 1 3 8, srcInfoPoints = []}) (
    PVar (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 3 1 3 4, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 3 1 3 4, srcInfoPoints = []}) "foo")) (
    UnGuardedRhs (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 3 5 3 8, srcInfoPoints = [SrcSpan "test_haskell1.hs" 3 5 3 6]}) (
    Lit (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 3 7 3 8, srcInfoPoints = []}) (
    Int (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 3 7 3 8, srcInfoPoints = []}) 0 "0"))) Nothing,PatBind (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 1 5 21, srcInfoPoints = []}) (
    PVar (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 1 5 5, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 1 5 5, srcInfoPoints = []}) "main")) (
    UnGuardedRhs (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 6 5 21, srcInfoPoints = [SrcSpan "test_haskell1.hs" 5 6 5 7]}) (
    App (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 8 5 21, srcInfoPoints = []}) (
    App (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 8 5 17, srcInfoPoints = []}) (
    Var (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 8 5 13, srcInfoPoints = []}) (
    UnQual (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 8 5 13, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 8 5 13, srcInfoPoints = []}) "print"))) (
    Var (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 14 5 17, srcInfoPoints = []}) (
    UnQual (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 14 5 17, srcInfoPoints = []}) (
    Ident (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 14 5 17, srcInfoPoints = []}) "foo")))) (
    List (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 18 5 21, srcInfoPoints = [SrcSpan "test_haskell1.hs" 5 18 5 19,SrcSpan "test_haskell1.hs" 5 20 5 21]}) [Lit (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 19 5 20, srcInfoPoints = []}) (
    Int (
    SrcSpanInfo {srcInfoSpan = SrcSpan "test_haskell1.hs" 5 19 5 20, srcInfoPoints = []}) 1 "1")]))) Nothing])
