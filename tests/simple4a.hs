-- import Language.Haskell.TH
--import Language.Haskell.TH.Syntax

-- code from "f = 0"
-- see ghc/compiler/hsSyn/HsExpr.hs for more definitions
-- see ghc/compiler/basicTypes/OccName.hs
data Foo = HsModule Foo Foo [Foo] [Foo] Foo Foo
  | MyFuncF -- the function f to be defined f =0
  | OccName Foo  --
    -- from ghc/compiler/basicTypes/OccName.hs
  | Match Foo [Foo] Foo Foo
  | PlaceHolder
  -- https://github.com/ghc/ghc/blob/8e6ec0fa7431b0454b09c0011a615f0845df1198/compiler/hsSyn/PlaceHolder.hs#L31
  | WpHole
  -- https://github.com/ghc/ghc/blob/791947db6db32ef7d4772a821a0823e558e3c05b/compiler/typecheck/TcEvidence.hs#L161
  | FromSource
  -- https://github.com/ghc/ghc/blob/ad14efd539377aaf472ad69449dcaf3e679b0e51/compiler/basicTypes/BasicTypes.hs#L531
  
  | MG [Foo] [Foo] Foo Foo
    -- MG = match group
    -- mg_alts = L _ matches
    -- , mg_arg_tys = arg_tys
    -- , mg_res_ty = rhs_ty
    -- , mg_origin = origin
    -- from https://github.com/ghc/ghc/blob/master/compiler/deSugar/Match.hs

  | Unqual Foo
  -- https://github.com/ghc/ghc/blob/4fdc523456ff6481df8d7483ae193f0c2dc2b3fe/compiler/parser/RdrHsSyn.hs#L642
  
  | FunBind Foo Foo Foo Foo [Foo]
    -- http://haddock.stackage.org/lts-3.10/ghc-7.10.2/src/HsBinds.html#HsBindLR
  -- FunBind {
  --    fun_id :: Located idL, -- Note [fun_id in Match] in HsExpr
  --    fun_infix :: Bool,      -- ^ True => infix declaration
  --    fun_matches :: MatchGroup idR (LHsExpr idR),  -- ^ The payload
  --    fun_co_fn :: HsWrapper, -- ^ 
  --    bind_fvs :: PostRn idL NameSet, -- ^ 
  --    fun_tick :: [Tickish Id]  -- ^ Ticks to put on the rhs, if any
    -- }
    
  | ValD Foo
  -- template haskell standard
  -- https://github.com/ghc/ghc/blob/028645ce67003f954e71c5a624c158c184506639/libraries/template-haskell/Language/Haskell/TH/Syntax.hs#L1605
  
  | EmptyLocalBinds
  -- https://github.com/ghc/ghc/blob/028645ce67003f954e71c5a624c158c184506639/libraries/template-haskell/Language/Haskell/TH/Syntax.hs#L1605
  
  | SourceText String
    -- https://github.com/ghc/ghc/blob/ba597c1dd1daf9643b72dc7aeace8d6b3fce84eb/utils/genprimopcode/Syntax.hs#L107
  | HsString Foo
  -- literal https://github.com/ghc/ghc/blob/ad0037ea3ea0eb9e2e693fa10f2171611c4e2217/compiler/hsSyn/HsLit.hs#L50
  | HsLit Foo
  -- https://github.com/ghc/ghc/blob/ad0037ea3ea0eb9e2e693fa10f2171611c4e2217/compiler/hsSyn/HsLit.hs#L45
  | IL Foo Bool Integer
    -- integer literal
    --https://github.com/ghc/ghc/blob/ad14efd539377aaf472ad69449dcaf3e679b0e51/compiler/basicTypes/BasicTypes.hs#L1471
    
  | HsIntegral Foo
  -- https://github.com/ghc/ghc/blob/ad0037ea3ea0eb9e2e693fa10f2171611c4e2217/compiler/hsSyn/HsLit.hs#L110
  
  | OverLit Foo Foo Foo Foo
    --https://github.com/ghc/ghc/blob/ad0037ea3ea0eb9e2e693fa10f2171611c4e2217/compiler/hsSyn/HsLit.hs#L99
    --Haskell Overloaded Literal
  | HsOverLit Foo --     --https://github.com/ghc/ghc/blob/ad0037ea3ea0eb9e2e693fa10f2171611c4e2217/compiler/hsSyn/HsLit.hs#L98



  | GRHS [Foo] -- guards 
    Foo -- right hand side, body
    -- guarded right hand side
    -- https://github.com/ghc/ghc/blob/aeb4bd958439515e02e6f8f9bb22cf84f7cd7d75/compiler/hsSyn/HsExpr.hs#L1511
    
  | GRHSs
    [Foo] ---grhssGRHSs :: [LGRHS id body],       -- ^ Guarded RHSs
    Foo -- grhssLocalBinds :: (HsLocalBinds id) -- ^ The where clause
    -- https://downloads.haskell.org/~ghc/7.8.3/docs/html/libraries/ghc-7.8.3/src/HsExpr.html#GRHSs
    -- GRHSs are used both for pattern bindings and for Matches
    -- https://github.com/ghc/ghc/blob/aeb4bd958439515e02e6f8f9bb22cf84f7cd7d75/compiler/hsSyn/HsExpr.hs#L1501
    
  | FunRhs Foo Foo Foo
  -- https://github.com/ghc/ghc/blob/aeb4bd958439515e02e6f8f9bb22cf84f7cd7d75/compiler/hsSyn/HsExpr.hs#L2363
   -- FunRhs { mc_fun        :: Located id    -- ^ function binder of @f@
   --        , mc_fixity     :: LexicalFixity -- ^ fixing of @f@
   --        , mc_strictness :: SrcStrictness -- ^ was @f@ banged?
   --                                                    -- See Note [FunBind vs PatBind]
   --        }
   --                                  -- ^A pattern matching on an argument of a
   --                                  -- function binding
    
  | Prefix
  -- https://github.com/ghc/ghc/blob/ba597c1dd1daf9643b72dc7aeace8d6b3fce84eb/libraries/base/Data/Data.hs#L551
  
  | NoSrcStrict
  -- https://github.com/ghc/ghc/blob/7a74f5053fa0972b8ce191f7492e1692f09c2e1d/compiler/basicTypes/DataCon.hs#L520
  
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

        -- mg_alts 
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
             ) -- Match arg1, fun rhs
             [] -- Match arg2
             (ANothing) -- match arg3
             (GRHSs  -- match arg4
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
                          )
                        ) -- lit 
                         (PlaceHolder)
                       ) -- over lit
                      ) -- HS over lit
                    )
                  ) -- GRHS right hand side
                )
              ]
              (--{ <no location info> }
                (EmptyLocalBinds)
              ) -- match arg5
             ) -- GRHSs Right hand side: https://github.com/ghc/ghc/blob/4fdc523456ff6481df8d7483ae193f0c2dc2b3fe/compiler/parser/RdrHsSyn.hs#L518
           ] -- one alt
         ) --   mg_alts      
        [] --mg_arg_tys 
         (PlaceHolder)  -- mg_res_ty 
         (FromSource) -- mg_origin
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
