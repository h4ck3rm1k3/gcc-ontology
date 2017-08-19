data Tree =
  EmptyList
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
  | ArgDefaults
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
  | Record_type_Call Tree
  | NilAttr Tree
  | NilStarArgs
  | ArgArgs
  | SetAttr Tree Tree
  | Node Int Tree Tree
  | ArgumentsFunc
  | ArgVarArg
  | AlistN [ Tree ]
          deriving Show

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
        _ -> LoadValue value
    SetValue v ->
      case value of
        SetName -> DoSetName v 
    _ -> Record_type_arg_value arg value

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
      Record_type_Call f -> f
      _ -> SetRecValue y
    Call -> case y of
      Record_type_args_func_keywords_kwargs_starargs keywords kwargs args func  starargs ->
        case keywords of
          NoKeyWords -> C1 [ func -- , args,  kwargs, starargs
                           ]
          _ -> case args of
            
            SetEmptyArgs -> case kwargs of              
              NilKeyWordArgs -> case starargs of
                NilStarArgs -> C2B [ func ,
                                     keywords  ]
                _ -> C2C [ func ,  keywords , starargs ]
              _ -> C2 [ func, kwargs ]
                       
                            
                            
            _ -> case kwargs of 
              NilKeyWordArgs -> C3 [ func --, args,  keywords,  starargs
                                   ]
              _ -> C4 [ func -- , args,  keywords, kwargs, starargs
                      ]
      _ -> SetCall y    
    --_ -> Setrec x y
attribute_keywords_type_list x =
  case x of
    Alist0 -> NoKeyWords
    AlistN x -> SetKeyWords2 x
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
        Defaults -> ArgDefaults
        Args -> ArgArgs
        DecoratorList -> ArgDecoratorList
        VarArg -> ArgVarArg
        Name -> SetName
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
    _ -> SetAttr x y
      
attribute_args_type_list_39 x =
  case x of
    Alist0 -> EmptyList

arecord x =x
--  case x of
--    Arg -> x
    --( Arg, Arg) -> x
    --(Arg, Arg, Arg, Arg, Arg) -> x
  
record_type_Call x = Record_type_Call x
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
record_type_value x = Record_type_value x
record_type_value_42 x = record_type_value x
record_type_body x = Record_type_body x
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
