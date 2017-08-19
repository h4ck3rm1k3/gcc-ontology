-- Example python ast reduced using haskell

-- Input :
-- def example_empty_function():
--     pass

-- Currently evals to (manual tweaking):
-- SetBody [CallModuleFunc2 [BodyElements (CallFunctionDefFunc2 [DoSetName ExampleEmptyFunction,SetArgArgs (CallArgumentsFunc []),BodyElements PassFunc])]]

-- Simple ast :
-- from generate_haskell_from_empty_python_ast.py
-- Module(body=[FunctionDef(
--   name='example_empty_function',
--   args=arguments(
--     args=[],
--     vararg=None,
--     kwarg=None,
--     defaults=[]),
--   body=[Pass()],
--   decorator_list=[])])

-- significant data :
-- Module(body=[FunctionDef(
--   name='example_empty_function',
--   args=arguments(),
--   body=[Pass()],
-- )])
  
  
data Tree =
  EmptyList
  | BodyElements Tree
  | L [Tree ] -- reduce
  | Skip
  | Debug Tree
  | CallFunctionDefFunc2 [Tree]
  | CallModuleFunc Tree
  | CallModuleFunc2 [Tree]
  | CallArgumentsFunc [Tree]
  | Check Tree Tree
  | SetArgArgs Tree
  | LoadArgArgs
  | LoadArgDecoratorList
  | LoadArgDefaults Tree
  | SetKeyWordArg
  | NoKeyWordArg
  | NoVarArgs
  | Check2 Tree
  | SetArgBody Tree
  | SetBodyAttr Tree
  | SetArgBodyElts Tree 
  | SRV Tree Tree -- set record value
  | C1 [ Tree ]
  | C2 [ Tree ]
  | C2B [ Tree ]
  | C2C [ Tree ]  
  | C3 [ Tree ]
  | C4 [ Tree ]
  | SetBody [ Tree ]
  | DoSetName Tree
  | SetName 
  | Load
  | LoadValue Tree
  | ArgDefaults Tree
  | SetAlist Tree
  | SetRecValue Tree
  | SetCall Tree
  | SetKeyWords2 [Tree]
  | SetKeyWords Tree
  | PassFunc
  | NoKeyWords
  | EmptyEltsList
  | SetElements Tree 
  | ArgDecoratorList
  | CtxLd
  | ArgBody
  | SetEmptyArgs
    | NilKeyWordArgs
  | SetArgs Tree
  | SetArg Tree
  | SetStr Tree Tree
  | SetFunc Tree
  | ModuleFunc
  | FunctionDefFunc
  ---
  |   ExampleEmptyFunction
  -- constants
  | AList
  | Arg
  | Args
  | Arguments
  | Body
  | Call
  | Ctx
  | DecoratorList
  | Defaults
  | Elements
  | NoneValue
  | Func
  | FunctionDef
  | KeyWordArg
  | KeyWordArgs
  | KeyWords
  | Ld
  | Module
  | Name
  | None 
  | Pass
  | StarArgs
  | Value
  | VarArg
  ---
  | Alist4 Tree Tree Tree Tree
  | Alist1 Tree
  | Attribute_body_type_list Tree
  | Attribute_keywords_type_list Tree
  | Attribute_elts_type_list Tree
  | Attribute_args_type_list  Tree 
  | Record_type_args_func_keywords_kwargs_starargs Tree Tree Tree Tree Tree
  | SetValue Tree
  | Achain Tree
  | Arecord Tree Tree
  | Record_type_a_list Tree
  | Record_type_arg_value Tree Tree
  | Record_type_body Tree
  | Record_type_ctx_elts Tree Tree
  | Record_type_value Tree
  | Setrec Tree Tree
  | Alist0
  | DoCall Tree
  | NilAttr Tree
  | NilStarArgs
  | ArgArgs
  | SetAttr Tree Tree
  | Node Int Tree Tree
  | ArgumentsFunc
  | ArgVarArg
  | F [Tree]
  | AlistN [ Tree ]
          deriving Show

record_type_value x =  x

-- this is setting the body of a record type, so one time at the top of the fake modules created,
-- lets skip this for now to reduce the size of the tree
record_type_body x = x

attribute_body_type_list x =
  case x of 
    AlistN f -> SetBody f

alist_4 (a,b,c,d) = AlistN [a, b, c, d]
alist_1 x = AlistN [x]
alist_0 x = Alist0

achain x =  x

record_type_arg_value (arg,value) =
  case arg of
    Load ->
      case value of
        ArgArgs -> LoadArgArgs
        ArgDecoratorList -> LoadArgDecoratorList
        ArgDefaults x -> LoadArgDefaults x
        _ -> LoadValue value
    SetValue v ->
      case value of
        SetName -> DoSetName v
    SetRecValue v ->
      case value of
        ArgBody -> case v of
          Record_type_a_list(SetAlist (x))-> case x of
            Record_type_ctx_elts y z -> case y of
                SetElements a -> case a of
                  Attribute_elts_type_list b -> case b of                                                  
                    AlistN [ list ] -> case z of
                      CtxLd -> case list of
                        DoCall (f)->SetArgBodyElts f
                                                   -- SetElements (Attribute_elts_type_list (AlistN x))
        _  -> SRV value v
    NoneValue -> case value of
      ArgVarArg -> NoVarArgs
      SetKeyWordArg -> NoKeyWordArg
      _ -> Check2 value
    _ -> case value of
      ArgArgs -> SetArgArgs arg --Check arg value --Record_type_arg_value Check(arg) value

record_type_a_list x =
  case x of
    Load -> Load
    _ -> Record_type_a_list x
    
record_type_ctx_elts (ctx,elts) =
  case ctx of
    EmptyEltsList ->
      case elts of
        CtxLd -> Load          
    _ -> Record_type_ctx_elts ctx elts

setrec (x,y) =
  case x of
    AList ->
      case y of
        Load -> Load
        _ -> SetAlist y
    Value -> case y of
      Load -> Load
      DoCall f -> f
      _ -> SetRecValue y
    Call -> case y of
      Record_type_args_func_keywords_kwargs_starargs keywords kwargs args func  starargs ->
        case keywords of
          NoKeyWords -> case args of
            SetEmptyArgs -> case kwargs of              
              NilKeyWordArgs -> case starargs of
                NilStarArgs ->  func -- just a func
          
          _ -> case args of
            
            SetEmptyArgs -> case kwargs of              
              NilKeyWordArgs -> case starargs of
                NilStarArgs -> case func of
                  ModuleFunc -> case keywords of
                    SetKeyWords (L x) -> CallModuleFunc2 x
                  ArgumentsFunc -> case keywords of
                    SetKeyWords (L x) -> CallArgumentsFunc x
                  FunctionDefFunc -> case keywords of
                    SetKeyWords (L x) -> CallFunctionDefFunc2 x
                  _ -> C2C [ func ,  keywords ]
                _ -> C2C [ func ,  keywords , starargs ]
              _ -> C2 [ func, kwargs ]
                       
                            
                            
            _ -> case kwargs of 
              NilKeyWordArgs -> C3 [ func --, args,  keywords,  starargs
                                   ]
              _ -> C4 [ func -- , args,  keywords, kwargs, starargs
                      ]
      _ -> SetCall y    
    --_ -> Setrec x y
kwtl x = case x of
  SetArgBodyElts y -> BodyElements y
  DoSetName y ->DoSetName y
  SetArgArgs y -> SetArgArgs y
  LoadArgArgs -> Skip
  NoVarArgs -> Skip
  NoKeyWordArg -> Skip
  LoadArgDefaults y -> Skip
  LoadArgDecoratorList -> Skip
--  _ -> Debug x

kwtlf x = case x of
            Skip -> False
            _ -> True
            
dof x = map kwtl  x
dof3 x = filter kwtlf  x

dof2 x = L (dof3(dof x))

--

attribute_keywords_type_list x =
  case x of
    Alist0 -> NoKeyWords
    -- map kwtl
    AlistN x -> dof2  x 
--    _ -> Attribute_keywords_type_list x

attribute_elts_type_list x =
  case x of
    Alist0 -> EmptyEltsList
    _ -> Attribute_elts_type_list x

nilattr x =
  case x of
    StarArgs -> NilStarArgs
    KeyWordArgs -> NilKeyWordArgs
    _ ->  NilAttr x
setstr (k, v) =
  case k of
    Value ->
      case v of
        None ->     NoneValue
        _ -> SetValue v
          
    Ctx ->
      case v of
        Ld -> CtxLd
    Arg ->
      case v of
        Body -> ArgBody
        Defaults -> ArgDefaults v
        Args -> ArgArgs
        DecoratorList -> ArgDecoratorList
        VarArg -> ArgVarArg
        Name -> SetName
        KeyWordArg -> SetKeyWordArg
        _ -> SetArg v
    Func -> 
      case v of
        Module -> ModuleFunc
        Pass -> PassFunc
        FunctionDef -> FunctionDefFunc
        Arguments -> ArgumentsFunc
        _ -> SetFunc v
    _ -> SetStr k v

setattr (x,y) =
  case x of
    KeyWords ->
      case y of
        NoKeyWords -> NoKeyWords
        SetKeyWords2 y -> SetKeyWords2 y
        _ -> SetKeyWords y
    Elements ->
      case y of 
        EmptyEltsList -> EmptyEltsList
        _ -> SetElements y
    Args ->
      case y of
        EmptyList -> SetEmptyArgs
        Alist0 -> SetEmptyArgs
        _ ->         SetArgs y
    Body ->
      y --SetBodyAttr 
    _ -> SetAttr x y
      
attribute_args_type_list_39 x =
  case x of
    Alist0 -> EmptyList

arecord x =x
--  case x of
--    Arg -> x
    --( Arg, Arg) -> x
    --(Arg, Arg, Arg, Arg, Arg) -> x
  
record_type_Call x = DoCall x
--  case x of
    




tupleToList :: [(a,a)] -> [a]
tupleToList ((a,b):xs) = a : b : tupleToList xs
tupleToList _          = []

main :: IO()
main = do 
    print eval_module




attribute_body_type_list_1 x = attribute_body_type_list x




attribute_keywords_type_list_2 x = attribute_keywords_type_list x

attribute_elts_type_list_3 x = attribute_elts_type_list x
attribute_keywords_type_list_4 x = attribute_keywords_type_list x




record_type_arg_value_5 x = record_type_arg_value x
attribute_keywords_type_list_6 x = attribute_keywords_type_list x
attribute_elts_type_list_7 x = attribute_elts_type_list x


record_type_ctx_elts_30 x = record_type_ctx_elts x
record_type_ctx_elts_8 x = record_type_ctx_elts x

record_type_a_list_9 x = record_type_a_list x
record_type_arg_value_10 x = record_type_arg_value x
record_type_arg_value_11 x = record_type_arg_value x
record_type_arg_value_12 x = record_type_arg_value x
attribute_elts_type_list_13 x = attribute_elts_type_list x
record_type_ctx_elts_14 x = record_type_ctx_elts x
record_type_a_list_15 x = record_type_a_list x
record_type_arg_value_16 x = record_type_arg_value x

attribute_args_type_list x =  x
attribute_args_type_list_17 x = x
record_type_args_func_keywords_kwargs_starargs (args,func, keywords, kwargs, starargs) = Record_type_args_func_keywords_kwargs_starargs args func keywords kwargs starargs
record_type_args_func_keywords_kwargs_starargs_18 x = record_type_args_func_keywords_kwargs_starargs x

record_type_Call_19 x = record_type_Call x
record_type_arg_value_20 x = record_type_arg_value x
attribute_elts_type_list_21 x = attribute_elts_type_list x
attribute_keywords_type_list_22 x = attribute_keywords_type_list x
attribute_args_type_list_23 x = attribute_args_type_list x
record_type_args_func_keywords_kwargs_starargs_24 x = record_type_args_func_keywords_kwargs_starargs x
record_type_Call_25 x = record_type_Call x
record_type_ctx_elts_26 x = record_type_ctx_elts x
record_type_a_list_27 x = record_type_a_list x
record_type_arg_value_28 x = record_type_arg_value x
attribute_elts_type_list_29 x = attribute_elts_type_list x

record_type_a_list_31 x = record_type_a_list x
record_type_arg_value_32 x = record_type_arg_value x
attribute_args_type_list_33 x = attribute_args_type_list x
record_type_args_func_keywords_kwargs_starargs_34 x = record_type_args_func_keywords_kwargs_starargs x
record_type_Call_35 x = record_type_Call x
record_type_ctx_elts_36 x = record_type_ctx_elts x
record_type_a_list_37 x = record_type_a_list x
record_type_arg_value_38 x = record_type_arg_value x

record_type_args_func_keywords_kwargs_starargs_40 x = record_type_args_func_keywords_kwargs_starargs x
record_type_Call_41 x = record_type_Call x

record_type_value_42 x = record_type_value x

record_type_body_43 x = record_type_body x


a_list  = AList
arg = Arg
args = Args
arguments  = Arguments
body = Body
ctx  = Ctx
decorator_list = DecoratorList
defaults = Defaults
elts = Elements
example_empty_function = ExampleEmptyFunction
func = Func
keywords = KeyWords
kwarg = KeyWordArg
kwargs = KeyWordArgs
name = Name
starargs =StarArgs
value  = Value
vararg = VarArg
 
eval_module= record_type_body_43(arecord(
    setattr(body, attribute_body_type_list_1 (alist_1(
     achain(record_type_value_42(arecord(
        setrec(value, record_type_Call_41(arecord(
          setrec(Call, record_type_args_func_keywords_kwargs_starargs_40(arecord(
            setattr(keywords, attribute_keywords_type_list_2 (alist_1(
             achain(record_type_arg_value_38(arecord(
                setrec(value, record_type_a_list_37(arecord(
                  setrec(a_list, record_type_ctx_elts_36(arecord(
                    setattr(elts, attribute_elts_type_list_3 (alist_1(
                     achain(record_type_Call_35(arecord(
                        setrec(Call, record_type_args_func_keywords_kwargs_starargs_34(arecord(
                          setattr(keywords, attribute_keywords_type_list_4 (alist_4(
                           achain(record_type_arg_value_5(arecord(
                              setstr(value,example_empty_function),
                              setstr(arg,name)))),
                           achain(record_type_arg_value_20(arecord(
                              setrec(value, record_type_Call_19(arecord(
                                setrec(Call, record_type_args_func_keywords_kwargs_starargs_18(arecord(
                                  setattr(keywords, attribute_keywords_type_list_6 (alist_4(
                                   achain(record_type_arg_value_10(arecord(
                                      setrec(value, record_type_a_list_9(arecord(
                                        setrec(a_list, record_type_ctx_elts_8(arecord(
                                          setattr(elts, attribute_elts_type_list_7 (alist_0())),
                                          setstr(ctx,Ld))))))),
                                      setstr(arg,args)))),
                                   achain(record_type_arg_value_11(arecord(
                                      setstr(value,None),
                                      setstr(arg,vararg)))),
                                   achain(record_type_arg_value_12(arecord(
                                      setstr(value,None),
                                      setstr(arg,kwarg)))),
                                   achain(record_type_arg_value_16(arecord(
                                      setrec(value, record_type_a_list_15(arecord(
                                        setrec(a_list, record_type_ctx_elts_14(arecord(
                                          setattr(elts, attribute_elts_type_list_13 (alist_0())),
                                          setstr(ctx,Ld))))))),
                                      setstr(arg,defaults))))))),
                                  nilattr(kwargs),
                                  setattr(args, attribute_args_type_list_17 (alist_0())),
                                  setstr(func,arguments),
                                  nilattr(starargs))))))),
                              setstr(arg,args)))),
                           achain(record_type_arg_value_28(arecord(
                              setrec(value, record_type_a_list_27(arecord(
                                setrec(a_list, record_type_ctx_elts_26(arecord(
                                  setattr(elts, attribute_elts_type_list_21 (alist_1(
                                   achain(record_type_Call_25(arecord(
                                      setrec(Call, record_type_args_func_keywords_kwargs_starargs_24(arecord(
                                        setattr(keywords, attribute_keywords_type_list_22 (alist_0())),
                                        nilattr(kwargs),
                                        setattr(args, attribute_args_type_list_23 (alist_0())),
                                        setstr(func,Pass),
                                        nilattr(starargs)))))))))),
                                  setstr(ctx,Ld))))))),
                              setstr(arg,body)))),
                           achain(record_type_arg_value_32(arecord(
                              setrec(value, record_type_a_list_31(arecord(
                                setrec(a_list, record_type_ctx_elts_30(arecord(
                                  setattr(elts, attribute_elts_type_list_29 (alist_0())),
                                  setstr(ctx,Ld))))))),
                              setstr(arg,decorator_list))))))),
                          nilattr(kwargs),
                          setattr(args, attribute_args_type_list_33 (alist_0())),
                          setstr(func,FunctionDef),
                          nilattr(starargs)))))))))),
                    setstr(ctx,Ld))))))),
                setstr(arg,body))))))),
            nilattr(kwargs),
            setattr(args, attribute_args_type_list_39 (alist_0())),
            setstr(func,Module),
            nilattr(starargs)))))))))))))))
