{-# LANGUAGE CPP #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE DeriveDataTypeable #-}
-- https://github.com/ghc/ghc/blob/4d41e9212d1fdf109f2d0174d204644446f5874c/compiler/hsSyn/HsTypes.hs
module FakeAstCore where

data HsIB = HsIB
            { hsib_ph1 :: HsIB -- :: PlaceHolder -> t0
            , hsib_ph2 :: HsFunTy -- :: PlaceHolder -> t116
            ,hsib_r1  :: HsIB
            } | PlaceHolder
    deriving (Show, Eq, Ord)

data HsFunTy = HsFunTy
  { hsfy_t1 :: HsType
  , hsfy_t2 :: HsType
  }
    deriving (Show, Eq, Ord)
  
data SrcStrict = SrcStrict
    deriving (Show, Eq, Ord)
data NoSrcUnpack = NoSrcUnpack
    deriving (Show, Eq, Ord)
data FieldOcc = FieldOcc HsQName HsIB
    deriving (Show, Eq, Ord)

data ConDeclField = ConDeclField
  { cd_fld_name :: (SomeArray FieldOcc)
  , cd_fld_type :: (HsType)
  , cd_fld_doc :: AMaybe LHsDocString
  }  
    deriving (Show, Eq, Ord)


data LHsDocString = LHsDocString
    deriving (Show, Eq, Ord)

data LHsSigType = LHsSigType
    deriving (Show, Eq, Ord)

data Foo = Foo
    deriving (Show, Eq, Ord)

data HsConDeclDetails = HsConDeclDetails
  | RecCon(SomeArray (ConDeclField))
    deriving (Show, Eq, Ord)

data ConDecl 
  = ConDeclGADT
    { con_names   :: [ GenLocated ]
    , con_type    :: LHsSigType                     -- ^ The type after the ‘::’
    , con_doc     :: Maybe LHsDocString                    -- ^ A possible Haddock comment.
    }
    
  | ConDeclH98
    { con_name    :: HsQName --GenLocated 
    , con_qvars     :: AMaybe (LHsQTyVars )
                       -- User-written forall (if any), and its implicit
                       -- kind variables
                       -- Non-Nothing needs -XExistentialQuantification
                    --               e.g. data T a = forall b. MkT b (b->a)
                       --               con_qvars = {b}
    
    , con_cxt       :: AMaybe ( GenLocated ) -- LHsContext
                    -- ^ User-written context (if any)
    
    , con_details   :: HsConDeclDetails 
                    -- ^ Arguments
    
    , con_doc2       :: AMaybe LHsDocString
                       -- ^ A possible Haddock comment.
    }
    deriving (Show, Eq, Ord)  
  
data NewOrData=
  NewType                     -- ^ @newtype Blah ...@
  | DataType  -- ^ @data Blah ...@
    deriving (Show, Eq, Ord)

data CType= CType
    deriving (Show, Eq, Ord)

data LConDecl= LConDecl
    deriving (Show, Eq, Ord)

data HsDeriving=HsDeriving
    deriving (Show, Eq, Ord)

--data LHsContext = LHsContext
--    deriving (Show, Eq, Ord)


-- | Haskell Data type Definition
data HsDataDefn    -- The payload of a data type defn
                       -- Used *both* for vanilla data declarations,
                            --       *and* for data family instances
  = -- | Declares a data type or newtype, giving its constructors
    -- @
    --  data/newtype T a = <constrs>
    --  data/newtype instance T [a] = <constrs>
    -- @
    HsDataDefn
    { dd_ND     :: NewOrData,
      dd_ctxt   :: LHsContext ,           -- ^ Context
      dd_cType  :: AMaybe (Located CType),
      dd_kindSig:: AMaybe (LHsKind ),
      -- ^ Optional kind signature.
      --
      -- @(Just k)@ for a GADT-style @data@,
      -- or @data instance@ decl, with explicit kind sig
      --
      -- Always @Nothing@ for H98-syntax decls      
      dd_cons   :: SomeArray ConDecl ,
      -- ^ Data constructors
      --
      -- For @data T a = T1 | T2 a@
      --   the 'LConDecl's all have 'ConDeclH98'.
      -- For @data T a where { T1 :: T a }@
      --   the 'LConDecls' all have 'ConDeclGADT'.      
      dd_derivs :: GenLocated-- HsDeriving  -- ^ Optional 'deriving' claues  
                   -- For details on above see note [Api annotations] in ApiAnnotation
    }
    deriving (Show, Eq, Ord)
          -- :: t6
          --    -> NoLocationInfo
          --    -> AMaybe e4
          --    -> AMaybe e5
          --    -> SomeArray x1
          --    -> NoLocationInfo
          --    -> t5

--data DataFamily = DataFamily

data KindSig = KindSig
  { kstype :: HsType -- HsAppsTy
--  , ksvars ::  LHsTyVarBndrs
  }
             deriving (Show, Eq, Ord)
data DataFamily = DataFamily
  | OpenTypeFamily
    deriving (Show, Eq, Ord)



--data NotPromoted = NotPromoted
--data PlaceHolder = PlaceHolder    deriving (Show, Eq, Ord)
data FamilyDecl = FamilyDecl
                  { fdInfo :: DataFamily --1
                  , fdLName :: HsQName -- 2 -- LHsQTyVars
                  , fdTyVars :: LHsQTyVars -- LHsTyVarBndrs -- 3
                  , fdFixity :: LexicalFixity -- 4
                  , fdResultSig :: KindSig --LHsTyVarBndrs -- 5 
                  , fdInjectivityAnn :: AMaybe ( SomeArray (FamilyDecl)) -- 6
                  }
                  -- https://github.com/haskell/haddock/blob/3743d0822029728e5b9ef93e741ba6a440412e9f/haddock-api/src/Haddock/Convert.hs
    deriving (Show, Eq, Ord)

data LexicalFixity = Prefix | Infix 
  deriving (Show, Eq, Ord)

data TyFamEqn = TyFamEqn {
  -- 4
  tfe_tycon  :: HsQName -- Located (HsTyVarBndr)
  , tfe_pats   :: LHsQTyVars -- HsTyVarBndr
  , tfe_fixity :: LexicalFixity    -- ^ Fixity used in the declaration
  , tfe_rhs    :: HsType
  }
  deriving (Show, Eq, Ord)
--data ClassOpSig = ClassOpSig
--    deriving (Show, Eq, Ord)
-- DataFamily
-- DataType
-- DataType
data EmptyArray = EmptyArray
    deriving (Show, Eq, Ord)
-- FieldOcc :: HsQName -> t177 -> x58

-- HsBangTy :: t180 -> t183 -> t179

-- HsFunTy :: t11 -> t12 -> t10
-- HsIB :: t9 -> t10 -> t13 -> t8
-- HsParTy :: t184 -> t183
-- HsTupleTy :: t94 -> t95 -> t93
-- KindSig :: t69 -> t68
--data NoLocationInfo = NoLocationInfo ( EmptyArray)
--    deriving (Show, Eq, Ord)
-- NoSrcUnpack
-- NotPromoted :: HsName
-- OpenTypeFamily
-- PlaceHolder

-- RecCon :: SomeArray x57 -> t160
-- SrcStrict
-- data HsTyVarBndr name
--   = UserTyVar           -- No explicit kinding
--          name           -- See Note [Printing KindedTyVars]
--   | KindedTyVar
--          name
--          (LHsKind name)   -- The user-supplied kind signature
--       --  *** NOTA BENE *** A "monotype" in a pragma can have
--       -- for-alls in it, (mostly to do with dictionaries).  These
--       -- must be explicitly Kinded.
--   deriving (Eq,Ord,Show)
-- | Haskell Type Variable Binder
data HsTyVarBndr 
    = UserTyVar (HsQName)
    
        -- See Note [Located RdrNames] in HsExpr
    | KindedTyVar --(Located )
                  (LHsKind ) -- The user-supplied kind signature
        -- ^
        --  - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen',
        --          'ApiAnnotation.AnnDcolon', 'ApiAnnotation.AnnClose'
    deriving (Eq, Ord, Show)

type LHsTyVarBndr  = Located (HsTyVarBndr )

-- NOTE: we make the n_loc field strict to eliminate some potential
-- (and real!) space leaks, due to the fact that we don't look at
-- the SrcLoc in a Name all that often.
data NameSort
    = External Module
        -- A variant of External, for wired-in things
    | Internal -- A user-defined Id or TyVar
                        -- defined in the module being compiled
    | System -- A system-defined Id or TyVar.  Typically the
                        -- OccName is very uninformative (like 's')
  deriving (Eq, Ord, Show)

--  | WiredIn Module TyThing BuiltInSyntax
-- | An abstract unique object.  Objects of type 'Unique' may be
-- compared for equality and ordering and hashed into 'Int'.
--
-- >>> :{
-- do x <- newUnique
--    print (x == x)
--    y <- newUnique
--    print (x == y)
-- :}
-- True
-- False
newtype Unique =
    Unique Integer
  deriving (Eq, Ord, Show)

-- | A unique, unambiguous name for something, containing information about where
-- that thing originated.
data Name = Name
    { n_sort :: NameSort -- What sort of name it is
    , n_occ :: !OccName -- Its occurrence name
    , n_uniq :: {-# UNPACK #-}!Unique
    , n_loc :: !SrcSpan -- Definition site
    }-- https://github.com/ghc/ghc/blob/36f0cb74c5f7a0a8f3d164e580f293fa07106064/compiler/basicTypes/Name.hs
  deriving (Eq, Ord, Show)


--https://downloads.haskell.org/~ghc/7.6.3/docs/html/libraries/ghc-7.6.3/src/HsTypes.html
-- | Located Haskell Context
type LHsContext
     = Located (HsContext
                                --pass
                )
       --

-- data LHsTyVarBndrs  = HsQTvs
--     {
--       hsq_PlaceHolder :: HsIB -- possible array of name
--     , hsq_kvs :: (SomeArray (HsTyVarBndr)) -- Kind variables
--     , hsq_ph2 ::  HsIB
--              -- See Note [HsForAllTy tyvar binders]
--     } deriving (Eq, Ord, Show)

newtype UniqFM ele = UFM ( ele)  
    deriving (Eq, Ord, Show)

newtype UniqSet a = UniqSet {getUniqSet' :: UniqFM a} 
    deriving (Eq, Ord, Show)

type NameSet = UniqSet Name

data PostRn x = PostRn x
    deriving (Eq, Ord, Show)

-- | Located Haskell Quantified Type Variables
data LHsQTyVars   -- See Note [HsType binders]
  = HsQTvs { hsq_implicit :: HsIB -- PostRn  [Name]
                -- Implicit (dependent) variables

           , hsq_explicit :: SomeArray HsTyVarBndr -- [LHsTyVarBndr ]
                -- Explicit variables, written by the user
                -- See Note [HsForAllTy tyvar binders]

           , hsq_dependent :: HsIB --PostRn NameSet
               -- Which members of hsq_explicit are dependent; that is,
               -- mentioned in the kind of a later hsq_explicit,
               -- or mentioned in a kind in the scope of this HsQTvs
               -- See Note [Dependent LHsQTyVars] in TcHsType
    }
    deriving (Eq, Ord, Show)

-- https://github.com/ghc/ghc/blob/4d41e9212d1fdf109f2d0174d204644446f5874c/compiler/hsSyn/HsTypes.hs
-- | A type or class declaration.
data TyClDecl -- name
    =
      --ForeignType { tcdLName :: Located2 --name
      --, tcdExtName :: Maybe String }
  -- | -- | @type/data family T :: *->*@
  --   TyFamily {  tcdFlavour :: FamilyFlavour,             -- type or data
  --               tcdLName   :: Located name,              -- type constructor
  --               tcdTyVars  :: LHsTyVarBndrs name,        -- type variables
  --               tcdKindSig :: Maybe (LHsKind name)       -- result kind
  --   }
  -- | -- | @type/data declaration
  --   TyDecl { tcdLName  :: Located name            -- ^ Type constructor
  --          , tcdTyVars :: LHsTyVarBndrs name      -- ^ Type variables; for an associated type
  --                                                 --   these include outer binders
  --                                                 -- Eg  class T a where
  --                                                 --       type F a :: *
  --                                                 --       type F a = a -> a
  --                                                 -- Here the type decl for 'f' includes 'a' 
  --                                                 -- in its tcdTyVars
  --          , tcdTyDefn :: HsTyDefn name
  --          , tcdFVs    :: NameSet }
      -- |

      --     :: HsQName             -> t94 -> Prefix -> t5 -> PlaceHolder -> PlaceHolder -> TyClDecl
          DataDecl { tcdLName    :: HsQName -- Located Name --(IdP ) -- ^ Type constructor
                   , tcdTyVars   :: LHsQTyVars   -- ^ Type variables; for an associated type these include outer binders
                                    -- Eg  class T a where
                                    --       type F a :: *
                                    --       type F a = a -> a
                                    -- Here the type decl for 'f'
                                    -- includes 'a' in its tcdTyVars
                   , tcdFixity  :: LexicalFixity -- ^ Fixity used in the declaration
                   , tcdDataDefn :: HsDataDefn 
                   , tcdDataCusk :: HsIB -- PostRn  Bool    -- ^ does this have a CUSK?
                   , tcdFVs      :: HsIB --PostRn NameSet
                   }

      | ClassDecl { tcdCtxt :: GenLocated --NoLocationInfo -- LHsContext -- ^ Context...
                , tcdLName :: HsQName -- Located -- ^ Name of the class
                , tcdHsQTvs :: LHsQTyVars -- HsQTvs -- LHsTyVarBndrs -- HsQName -- HsQTvs
                , tcdPrefix :: LexicalFixity
                , tcdEmptyArray :: EmptyArray
                , tcdSomeArray :: SomeArray ( IE )
                , tcdFamilyArray :: SomeArray ( FamilyDecl )
                , tcdFamilyEqnArray :: SomeArray (TyFamEqn )
                , tcdEmptyArray2 :: EmptyArray
                , tcdPlaceHolder :: HsIB
                
                    -- LHsTyVarBndrs -- ^ Class type variables
                                                          --   only 'TyFamily'
                                                        --   only 'TySynonym'
                }
    deriving (Eq, Ord, Show)

--                tcdFDs     :: [Located (FunDep name)],  -- ^ Functional deps
--                tcdSigs    :: [LSig name],              -- ^ Methods' signatures
--                tcdMeths   :: LHsBinds name,            -- ^ Default methods
--                tcdATs     :: [LTyClDecl name],         -- ^ Associated types; ie
--                tcdATDefs  :: [LFamInstDecl name],      -- ^ Associated type defaults; ie
---                tcdDocs    :: [LDocDecl],               -- ^ Haddock docs
--                tcdFVs     :: NameSet
-- https://downloads.haskell.org/~ghc/7.6.1/docs/html/libraries/ghc-7.6.1/src/HsDecls.html#HsDecl

-- | A Haskell Declaration
data HsDecl -- id
    = TyClD (TyClDecl -- id
             ) -- ^ A type or class declaration.
    | HsTypeDecl SrcLoc
                 HsName
                 [HsName]
                 HsType
    | HsDataDecl SrcLoc
                 HsContext
                 HsName
                 [HsName]
                 [HsConDecl]
                 [HsQName]
    | HsInfixDecl SrcLoc
                  HsAssoc
                  Int
                  [HsOp]
    | HsNewTypeDecl SrcLoc
                    HsContext
                    HsName
                    [HsName]
                    HsConDecl
                    [HsQName]
    | HsClassDecl SrcLoc
                  HsContext
                  HsName
                  [HsName]
                  [HsDecl]
    | HsDefaultDecl SrcLoc
                    [HsType]
    | HsTypeSig SrcLoc
                [HsName]
                HsQualType
    | HsFunBind [HsMatch]
    | HsPatBind SrcLoc
                HsPat
                HsRhs
                [HsDecl] {-where-}
    | HsForeignImport SrcLoc
                      String
                      HsSafety
                      String
                      HsName
                      HsType
    | HsForeignExport SrcLoc
                      String
                      String
                      HsName
                      HsType
    deriving (Eq, Ord, Show)

--  | InstD       (InstDecl  id)    -- ^ An instance declaration.
--  | DerivD      (DerivDecl id)
--  | ValD        (HsBind id) -- maybe used currently commented
--  | SigD        (Sig id)
--  | DefD        (DefaultDecl id)
--  | ForD        (ForeignDecl id)
--  | WarningD    (WarnDecl id)
--  | AnnD        (AnnDecl id)
--  | RuleD       (RuleDecl id)
--  | VectD       (VectDecl id)
--  | SpliceD     (SpliceDecl id)
--  | DocD        (DocDecl)
--  | QuasiQuoteD (HsQuasiQuote id)
--  deriving (Eq,Ord,Show)
-- --UserTyVar :: HsQName -> x8
-- data HsDecl
--         | HsInstDecl    SrcLoc HsContext HsQName [HsType] [HsDecl]
-- | Haskell Kind
type HsKind  = HsType

-- | Located Haskell Kind
type LHsKind = Located (HsKind )-- ^ 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnDcolon'
  

-- data MyMaybe x =
--     AJust (x)
--     deriving (Eq, Ord, Show)

data AMaybe e =
    ANothing
    | AJust e
    deriving (Eq, Ord, Show)

-- includes decls from
-- https://downloads.haskell.org/~ghc/6.10.4/docs/html/libraries/ghc/HsImpExp.html
-- http://hackage.haskell.org/package/haskell-src-1.0.2.0/docs/src/Language-Haskell-Syntax.html#HsModule
-- https://github.com/ghc/ghc/blob/f63bc730c7ea42ca6882f8078eb86be8bf1cc6ad/compiler/hsSyn/HsImpExp.hs
-- Note [Literal source text],[Pragma source text]
data SourceText
    = SourceText String
    | NoSourceText -- ^ For when code is generated, e.g. TH,
                               -- deriving. The pretty printer will then make
                               -- its own representation of the item.
    deriving (Eq, Ord, Show)

-- | A String Literal in the source, including its original raw format for use by
-- source to source manipulation tools.
data StringLiteral = StringLiteral
    { sl_st :: SourceText -- literal raw source.
                       -- See not [Literal source text]
    , sl_fs :: String -- literal string value
    } deriving (Eq, Ord, Show)

--newtype MaybeHiding = AMaybe  StringLiteral
--  deriving (Eq, Ord, Show)
-- https://github.com/ghc/ghc/blob/f63bc730c7ea42ca6882f8078eb86be8bf1cc6ad/compiler/basicTypes/BasicTypes.hs
data ImportDecl = ImportDecl
    { ideclSourceSrc :: SourceText -- 1
                                 -- Note [Pragma source text] in BasicTypes
    , ideclName :: ModuleName -- ^ Module name. 2
    , ideclPkgQual :: AMaybe StringLiteral -- ^ Package qualifier. 3
    , ideclSource :: Bool -- ^ True <=> {-\# SOURCE \#-} import  4
    , ideclSafe :: Bool -- ^ True => safe import 5 
    , ideclQualified :: Bool -- ^ True => qualified 6
    , ideclImplicit :: Bool -- ^ True => implicit import (of Prelude) 7
    , ideclAs :: AMaybe (ModuleName) -- ^ as Module 8
    , ideclHiding :: AMaybe (Bool, SomeArray (IE)) -- 9
--    , ideclOS :: AMaybe(ClassOpSig)
      -- Located [LIE ]
                                       -- ^ (True => hiding, names)
    }


                deriving (Eq, Ord, Show)

data NameSpace
    = VarName -- Variables, including "real" data constructors
    | DataName -- "Source" data constructors
    | TvName -- Type variables
    | TcClsName -- Type constructors and classes; Haskell has them
                                -- in the same name space for now.
    deriving (Eq, Ord, Show)

-- | Occurrence Name
-- https://github.com/ghc/ghc/blob/f63bc730c7ea42ca6882f8078eb86be8bf1cc6ad/compiler/basicTypes/OccName.hs
-- In this context that means:
-- "classified (i.e. as a type name, value name, etc) but not qualified
-- and not yet resolved"
data OccName
    = OccName2 { occNameSpace :: !NameSpace
               , occNameFS :: !String }
    | OccName { occNameFS :: !String }
    deriving (Eq, Ord, Show)

data OccName4 =
    OccName4
    deriving (Eq, Ord, Show)

-- | We attach SrcSpans to lots of things, so let's have a datatype for it.
data GenLocated  =
    L SrcSpan 
    | NoLocationInfo ( EmptyArray)
    deriving (Eq, Ord, Show)

data RealSrcSpan = RealSrcSpan'
    { srcSpanFile :: !String
    , srcSpanSLine :: {-# UNPACK #-}!Int
    , srcSpanSCol :: {-# UNPACK #-}!Int
    , srcSpanELine :: {-# UNPACK #-}!Int
    , srcSpanECol :: {-# UNPACK #-}!Int
    } deriving (Eq, Ord, Show)

data SrcSpan
    = RealSrcSpan !RealSrcSpan
    | UnhelpfulSpan !String -- Just a general indication
    deriving (Eq, Ord, Show)

type Located e = GenLocated 
type Located2 = GenLocated 

-- | Located name with possible adornment
-- - 'ApiAnnotation.AnnKeywordId's : 'ApiAnnotation.AnnType',
--         'ApiAnnotation.AnnPattern'
type LIEWrappedName = Located (IEWrappedName)

-- For details on above see note [Api annotations] in ApiAnnotation
-- | Located Import or Export
type LIE = Located (IE )-- ^ When in a list this may have
        --
        --  - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnComma'
        -- For details on above see note [Api annotations] in ApiAnnotation

-- | A name in an import or export specification which may have adornments. Used
-- primarily for accurate pretty printing of ParsedSource, and API Annotation
-- placement.
data IEWrappedName
    -- IEName    (Located name)  -- ^ no extra
    -- |
    = IEPattern 
    | IEType 
    deriving (Eq, Ord, Show)

-- | This type is used to represent qualified variables, and also
-- qualified constructors.
data HsQName
    = Qual Module
           HsName -- ^ name qualified with a module name
    | IEName (HsQName) -- step
    | UnQual HsName -- ^ unqualified name
    | Unqual OccName -- this is what was generated
    | Special HsSpecialCon -- ^ built-in constructor with special syntax
    deriving (Eq, Ord, Show)

data HsDoc =
    HsDoc -- forward
    deriving (Eq, Ord, Show)

-- data HsExportSpec
--     = HsEVar HsQName -- ^ variable
--     | HsEAbs HsQName -- ^ @T@:
--                         -- a class or datatype exported abstractly,
--                         -- or a type synonym.
--     | HsEThingAll HsQName -- ^ @T(..)@:
--            -- same thing
--     | IEThingAll HsQName -- ^ @T(..)@:
--                         -- a class exported with all of its methods, or
--                         -- a datatype exported with all of its constructors.
--     | HsEThingWith HsQName
--                    [HsCName] -- ^ @T(C_1,...,C_n)@:
--                         -- a class exported with some of its methods, or
--                         -- a datatype exported with some of its constructors.
--     | HsEModuleContents Module -- ^ @module M@:
--                         -- re-export a module.
--     deriving (Eq, Ord, Show)

-- merge with this
data IE 
    = IEVar
    | IEThingAbs HsQName -- HsExportSpec -- IE IE-- IE IE
    | IEThingAll HsQName 
    | IEThingWith
    | IEModuleContents ModuleName
    | IEGroup Int
              (HsDoc)
    | IEDoc (HsDoc )
    | IEDocNamed String
    | ClassOpSig
      { cos_is_default :: Bool
      , cos_lnames :: SomeArray (HsQName)
      , cos_sig_ty :: HsIB
      }
    deriving (Eq, Ord, Show)

--  | IEThingAll name
data ModuleName =
    ModuleName (String)
    deriving (Eq, Ord, Show)

data Blah =
    Blah
    deriving (Eq, Ord, Show)

-- data MaybeSrcLoc =
--   MyMaybe ModuleName
--   | ANothing
--     deriving (Eq, Ord, Show)

data SomeArray x =
    SomeArray [x]
  deriving (Eq, Ord, Show)

f2 = (AJust ((ModuleName ("Pos.Core.Block.Blockchain"))))

data HsModule =
    HsModule (AMaybe ModuleName)
  -- (MyMaybe Module)
  -- export spec array
  -- 
             (AMaybe (SomeArray (IE ))) -- IE IE
    --[HsImportDecl]
    (SomeArray (ImportDecl))
    --[HsDecl]
    (SomeArray (HsDecl))
                -- Blah
    deriving (Eq, Ord, Show)


--type MyMaybe = Maybe
data HsRhs =
    A
    deriving (Eq, Ord, Show)

data HsSafety =
    B
    deriving (Eq, Ord, Show)

data HsBangType =
    C
    deriving (Eq, Ord, Show)

data HsLiteral =
    E
    deriving (Eq, Ord, Show)

data HsPatField =
    F
    deriving (Eq, Ord, Show)

data HsAsst =
    G
    deriving (Eq, Ord, Show)

data SrcLoc = SrcLoc
    { srcFilename :: String
    , srcLine :: Int
    , srcColumn :: Int
    } deriving (Eq, Ord, Show)

newtype Module =
    Module String
    deriving (Eq, Ord, Show)

data HsName
    = HsIdent String -- ^ /varid/ or /conid/
    | HsSymbol String -- ^ /varsym/ or /consym/
    deriving (Eq, Ord, Show)

data HsCName
    = HsVarName HsName -- ^ name of a method or field
    | HsConName HsName -- ^ name of a data constructor
    deriving (Eq, Ord, Show)

data HsSpecialCon
    = HsUnitCon -- ^ unit type and data constructor @()@
    | HsListCon -- ^ list type constructor @[]@
    | HsFunCon -- ^ function type constructor @->@
    | HsTupleCon Int -- ^ /n/-ary tuple type and data
    --   constructors @(,)@ etc
    | HsCons -- ^ list data constructor @(:)@
    deriving (Eq, Ord, Show)

data HsImportDecl = HsImportDecl
    { importLoc :: SrcLoc -- ^ position of the @import@ keyword.  1
    , importModule :: Module -- ^ name of the module imported. 2 
    , importQualified :: Bool -- ^ imported @qualified@? 3 
    , importAs :: Maybe Module -- ^ optional alias name in an 4
                                        -- @as@ clause.
    , importSpecs :: Maybe (Bool, [HsImportSpec]) --5  
                        -- ^ optional list of import specifications.
                        -- The 'Bool' is 'True' if the names are excluded
                        -- by @hiding@.
    } deriving (Eq, Ord, Show)

-- | Import specification.
data HsImportSpec
    = HsIVar HsName -- ^ variable
    | HsIAbs HsName -- ^ @T@:
                        -- the name of a class, datatype or type synonym.
    | HsIThingAll HsName -- ^ @T(..)@:
                        -- a class imported with all of its methods, or
                        -- a datatype imported with all of its constructors.
    | HsIThingWith HsName
                   [HsCName] -- ^ @T(C_1,...,C_n)@:
                        -- a class imported with some of its methods, or
                        -- a datatype imported with some of its constructors.
    deriving (Eq, Ord, Show)

data Promoted = Promoted | NotPromoted
    deriving (Eq, Ord, Show)
data IdP = Idp
    deriving (Eq, Ord, Show)
-- | Haskell types and type constructors.

data HsAppType = HsAppPrefix
      {
        
      
        haptype :: HsType
--      ,hapname :: HsQName
      }
    | HsAppInfix
      {
        hsai ::HsQName
      }
    deriving (Eq, Ord, Show)

data HsTupleSort = HsUnboxedTuple
                 | HsBoxedTuple
                 | HsConstraintTuple
                 | HsBoxedOrConstraintTuple
                 deriving (Eq, Ord, Show)


data HsType =
    HsType
    | HsTyVar   Promoted HsQName -- HsName             -- ^ type variable
    | HsAppsTy (SomeArray (HsAppType)) --  :: SomeArray x0 -> t1

    | HsTupleTy
      {
        hstys :: HsTupleSort -- HsBoxedOrConstraintTuple -- :: t0 -> EmptyArray -> t41
      , hstyta ::  EmptyArray -- [HsType] -- L
      }
    | HsBangTy  HsType HsType -- :: t32 -> t35 -> t126HsBangTy :: t32 -> t35 -> t126
    | HsParTy (HsType) --  :: t122 -> t31
    | HsSrcBang SourceText NoSrcUnpack SrcStrict -- HsParTy

    deriving (Show, Eq, Ord)



--   = HsForAllTy   -- See Note [HsType binders]
--       { hst_bndrs :: [LHsTyVarBndr name]   -- Explicit, user-supplied 'forall a b c'
--       , hst_body  :: LHsType name          -- body type
--       }
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnForall',
--       --         'ApiAnnotation.AnnDot','ApiAnnotation.AnnDarrow'
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsQualTy   -- See Note [HsType binders]
--       { hst_ctxt :: LHsContext name       -- Context C => blah
--       , hst_body :: LHsType name }
--   | HsTyVar             Promoted -- whether explicitly promoted, for the pretty
--                                  -- printer
--                         (Located name)
--                   -- Type variable, type constructor, or data constructor
--                   -- see Note [Promotions (HsTyVar)]
--                   -- See Note [Located RdrNames] in HsExpr
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsAppsTy            [LHsAppType name] -- Used only before renaming,
--                                           -- Note [HsAppsTy]
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None
--   | HsAppTy             (LHsType name)
--                         (LHsType name)
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsFunTy             (LHsType name)   -- function type
--                         (LHsType name)
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnRarrow',
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsListTy            (LHsType name)  -- Element type
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'['@,
--       --         'ApiAnnotation.AnnClose' @']'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsPArrTy            (LHsType name)  -- Elem. type of parallel array: [:t:]
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'[:'@,
--       --         'ApiAnnotation.AnnClose' @':]'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsTupleTy           HsTupleSort
--                         [LHsType name]  -- Element types (length gives arity)
--     -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'(' or '(#'@,
--     --         'ApiAnnotation.AnnClose' @')' or '#)'@
--     -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsSumTy             [LHsType name]  -- Element types (length gives arity)
--     -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'(#'@,
--     --         'ApiAnnotation.AnnClose' '#)'@
--     -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsOpTy              (LHsType name) (Located name) (LHsType name)
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsParTy             (LHsType name)   -- See Note [Parens in HsSyn] in HsExpr
--         -- Parenthesis preserved for the precedence re-arrangement in RnTypes
--         -- It's important that a * (b + c) doesn't get rearranged to (a*b) + c!
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'('@,
--       --         'ApiAnnotation.AnnClose' @')'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsIParamTy          (Located HsIPName) -- (?x :: ty)
--                         (LHsType name)   -- Implicit parameters as they occur in contexts
--       -- ^
--       -- > (?x :: ty)
--       --
--       -- - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnDcolon'
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsEqTy              (LHsType name)   -- ty1 ~ ty2
--                         (LHsType name)   -- Always allowed even without TypeOperators, and has special kinding rule
--       -- ^
--       -- > ty1 ~ ty2
--       --
--       -- - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnTilde'
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsKindSig           (LHsType name)  -- (ty :: kind)
--                         (LHsKind name)  -- A type with a kind signature
--       -- ^
--       -- > (ty :: kind)
--       --
--       -- - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'('@,
--       --         'ApiAnnotation.AnnDcolon','ApiAnnotation.AnnClose' @')'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsSpliceTy          (HsSplice name)   -- Includes quasi-quotes
--                         (PostTc name Kind)
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'$('@,
--       --         'ApiAnnotation.AnnClose' @')'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsDocTy             (LHsType name) LHsDocString -- A documented type
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsBangTy    HsSrcBang (LHsType name)   -- Bang-style type annotations
--       -- ^ - 'ApiAnnotation.AnnKeywordId' :
--       --         'ApiAnnotation.AnnOpen' @'{-\# UNPACK' or '{-\# NOUNPACK'@,
--       --         'ApiAnnotation.AnnClose' @'#-}'@
--       --         'ApiAnnotation.AnnBang' @\'!\'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsRecTy     [LConDeclField name]    -- Only in data type declarations
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @'{'@,
--       --         'ApiAnnotation.AnnClose' @'}'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsCoreTy Type       -- An escape hatch for tunnelling a *closed*
--                         -- Core Type through HsSyn.
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsExplicitListTy       -- A promoted explicit list
--         Promoted           -- whether explcitly promoted, for pretty printer
--         (PostTc name Kind) -- See Note [Promoted lists and tuples]
--         [LHsType name]
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @"'["@,
--       --         'ApiAnnotation.AnnClose' @']'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsExplicitTupleTy      -- A promoted explicit tuple
--         [PostTc name Kind] -- See Note [Promoted lists and tuples]
--         [LHsType name]
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : 'ApiAnnotation.AnnOpen' @"'("@,
--       --         'ApiAnnotation.AnnClose' @')'@
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsTyLit HsTyLit      -- A promoted numeric literal.
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None
--       -- For details on above see note [Api annotations] in ApiAnnotation
--   | HsWildCardTy (HsWildCardInfo name)  -- A type wildcard
--       -- See Note [The wildcard story for types]
--       -- ^ - 'ApiAnnotation.AnnKeywordId' : None

--          = HsTyFun   HsType HsType      -- ^ function type
--          | HsTyTuple [HsType]           -- ^ tuple type
--          | HsTyApp   HsType HsType      -- ^ application of a type constructor

--          | HsTyCon   HsQName            -- ^ named type or type constructor
--   deriving (Eq,Ord,Show)
data HsConDecl
    = HsConDecl SrcLoc
                HsName
                [HsBangType]
                                -- ^ ordinary data constructor
    | HsRecDecl SrcLoc
                HsName
                [([HsName], HsBangType)]
                                -- ^ record constructor
    deriving (Eq, Ord, Show)

data HsAssoc
    = HsAssocNone -- ^ non-associative operator (declared with @infix@)
    | HsAssocLeft -- ^ left-associative operator (declared with @infixl@).
    | HsAssocRight -- ^ right-associative operator (declared with @infixr@)
    deriving (Eq, Ord, Show)

data HsOp
    = HsVarOp HsName -- ^ variable operator (/varop/)
    | HsConOp HsName -- ^ constructor operator (/conop/)
    deriving (Eq, Ord, Show)

-- | A type qualified with a context.
--   An unqualified type has an empty context.
data HsQualType =
    HsQualType HsContext
               HsType
    deriving (Eq, Ord, Show)

data HsPat
    = HsPVar HsName -- ^ variable
    | HsPLit HsLiteral -- ^ literal constant
    | HsPNeg HsPat -- ^ negated pattern
    | HsPInfixApp HsPat
                  HsQName
                  HsPat
                                        -- ^ pattern with infix data constructor
    | HsPApp HsQName
             [HsPat] -- ^ data constructor and argument
                                        -- patterns
    | HsPTuple [HsPat] -- ^ tuple pattern
    | HsPList [HsPat] -- ^ list pattern
    | HsPParen HsPat -- ^ parenthesized pattern
    | HsPRec HsQName
             [HsPatField] -- ^ labelled pattern
    | HsPAsPat HsName
               HsPat -- ^ @\@@-pattern
    | HsPWildCard -- ^ wildcard pattern (@_@)
    | HsPIrrPat HsPat -- ^ irrefutable pattern (@~@)
    deriving (Eq, Ord, Show)

-- | Clauses of a function binding.
data HsMatch =
    HsMatch SrcLoc
            HsName
            [HsPat]
            HsRhs
            [HsDecl] {-where-}
    deriving (Eq, Ord, Show)

type HsContext = [HsAsst]
  --import FakeAst
