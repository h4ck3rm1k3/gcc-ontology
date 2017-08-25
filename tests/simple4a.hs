-- import Language.Haskell.TH
--import Language.Haskell.TH.Syntax
data Foo = HsModule Foo Foo [Foo] [Foo] Foo Foo
  | Mb
  | MyFuncF
  | OccName Foo
  | Match Foo [Foo] Foo Foo
  | PlaceHolder
  | WpHole
  | FromSource
  | MG [Foo] [Foo] Foo Foo
  | Unqual Foo
  | FunBind Foo Foo Foo Foo [Foo]
  | ValD Foo
  | EmptyLocalBinds
  | SourceText String
  | HsString Foo
  | HsLit Foo
  | IL Foo Bool Integer 
  | HsIntegral Foo
  | OverLit Foo Foo Foo Foo
  | HsOverLit Foo
  | GRHS [Foo] Foo
  | GRHSs [Foo] Foo
  | FunRhs Foo Foo Foo
  | Prefix
  | NoSrcStrict
  | ANothing
         deriving Show
--import Language.Haskell.Syntax
--data HsModule = --HsModule SrcLoc Module (Maybe [HsExportSpec])
                --         [HsImportDecl] [HsDecl]
               
--import qualified OccName(OccName(..),occNameString,pprNameSpaceBrief)

-- x=(--{ simple4.hs:1:1 }
--  (HsModule 
--   (ANothing) 
--   (ANothing) 
--   [] 
--   []
--   (ANothing) 
--   (ANothing)))

             
y=(--{ simple4.hs:1:1 h}
 (HsModule 
  (ANothing) 
  (ANothing) 
  [] 
  [
   (--{ simple4.hs:1:1-5 g}
    (ValD 
      (FunBind
      
       (--{ simple4.hs:1:1 f}
         (Unqual (OccName MyFuncF)
         )
       ) 
        
       (MG 
        (--{ simple4.hs:1:1-5 e}

        [ 

          Match 
           (FunRhs 
            (--{ simple4.hs:1:1 c}
             (Unqual (OccName MyFuncF)
             )
            ) 
            (Prefix) 
            (NoSrcStrict)
           ) -- arg1
           
           [] 
           (ANothing) 
             (GRHSs 
            [
             (--{ simple4.hs:1:3-5 b}
              (GRHS 
               [] 
               (--{ simple4.hs:1:5 a}
                (HsOverLit 
                 (OverLit 
                  (HsIntegral 
                   (IL 
                    (SourceText "0") 
                    (False) 
                    (0))) 
                  (PlaceHolder) 
                  (HsLit 
                   (HsString 
                    (SourceText "noExpr") --{FastString: "noExpr"}
                   )) 
                  (PlaceHolder))))))] 
            (--{ <no location info> }
             (EmptyLocalBinds)))

        ]

        ) 
        [] 
         (PlaceHolder) 
         (FromSource)
       ) -- MG
       
       (WpHole) 
       (PlaceHolder) 
       []
      ) -- funbind
      
    )
   )
  ] 
  (ANothing) 
  (ANothing)))

main :: IO()
main = do 
  print y
