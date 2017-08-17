
data Tree = SetStr String String
  | Alist4 Tree Tree Tree Tree
  | Alist1 Tree
  | Attribute_body_type_list Tree
  | Attribute_keywords_type_list Tree
  | Attribute_elts_type_list Tree
  | Attribute_args_type_list  Tree 
  | Record_type_args_func_keywords_kwargs_starargs Tree Tree Tree Tree Tree

  | Achain Tree
  | Arecord Tree Tree
  | Record_type_a_list Tree
  | Record_type_arg_value Tree Tree
  | Record_type_body Tree
  | Record_type_ctx_elts Tree Tree
  | Record_type_value Tree
  | Setrec String Tree
  | Alist0
  | Record_type_Call Tree
  | NilAttr String
  | SetAttr String Tree
  | Node Int Tree Tree deriving Show

setstr (k, v) = SetStr k v
nilattr x = NilAttr x
alist_4 (a,b,c,d) = Alist4 a b c d
alist_1 x = Alist1 x
alist_0 x = Alist0
setattr (x,y) = SetAttr x y
tupleToList :: [(a,a)] -> [a]
tupleToList ((a,b):xs) = a : b : tupleToList xs
tupleToList _          = []

--alist_4 :: (a, b, c, d) -> [a]
--alist_4 (a,b,c,d) = ("alist_4", [a,b,c,d])

main :: IO()
main = do 
    print eval_module

arecord x = x

attribute_body_type_list x = Attribute_body_type_list x
attribute_body_type_list_1 x = attribute_body_type_list x

achain x = Achain x
setrec (x,y) = Setrec x y
attribute_keywords_type_list x = Attribute_keywords_type_list x
attribute_keywords_type_list_2 x = attribute_keywords_type_list x
attribute_elts_type_list x =  Attribute_elts_type_list x
attribute_elts_type_list_3 x = attribute_elts_type_list x
attribute_keywords_type_list_4 x = attribute_keywords_type_list x


record_type_arg_value (arg,value) = Record_type_arg_value arg value

record_type_arg_value_5 x = record_type_arg_value x
attribute_keywords_type_list_6 x = attribute_keywords_type_list x
attribute_elts_type_list_7 x = attribute_elts_type_list x

record_type_ctx_elts (ctx,elts) = Record_type_ctx_elts ctx elts
record_type_ctx_elts_30 x = record_type_ctx_elts x
record_type_ctx_elts_8 x = record_type_ctx_elts x
record_type_a_list x = Record_type_a_list x
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
record_type_Call x = Record_type_Call x
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
attribute_args_type_list_39 x = Attribute_args_type_list x
record_type_args_func_keywords_kwargs_starargs_40 x = record_type_args_func_keywords_kwargs_starargs x
record_type_Call_41 x = record_type_Call x
record_type_value x = Record_type_value x
record_type_value_42 x = record_type_value x
record_type_body x = Record_type_body x
record_type_body_43 x = record_type_body x

eval_module= record_type_body_43(arecord(
    setattr("body", attribute_body_type_list_1 (alist_1(
     achain(record_type_value_42(arecord(
        setrec("value", record_type_Call_41(arecord(
          setrec("Call", record_type_args_func_keywords_kwargs_starargs_40(arecord(
            setattr("keywords", attribute_keywords_type_list_2 (alist_1(
             achain(record_type_arg_value_38(arecord(
                setrec("value", record_type_a_list_37(arecord(
                  setrec("a_list", record_type_ctx_elts_36(arecord(
                    setattr("elts", attribute_elts_type_list_3 (alist_1(
                     achain(record_type_Call_35(arecord(
                        setrec("Call", record_type_args_func_keywords_kwargs_starargs_34(arecord(
                          setattr("keywords", attribute_keywords_type_list_4 (alist_4(
                           achain(record_type_arg_value_5(arecord(
                              setstr("value","example_empty_function"),
                              setstr("arg","name")))),
                           achain(record_type_arg_value_20(arecord(
                              setrec("value", record_type_Call_19(arecord(
                                setrec("Call", record_type_args_func_keywords_kwargs_starargs_18(arecord(
                                  setattr("keywords", attribute_keywords_type_list_6 (alist_4(
                                   achain(record_type_arg_value_10(arecord(
                                      setrec("value", record_type_a_list_9(arecord(
                                        setrec("a_list", record_type_ctx_elts_8(arecord(
                                          setattr("elts", attribute_elts_type_list_7 (alist_0())),
                                          setstr("ctx","Ld"))))))),
                                      setstr("arg","args")))),
                                   achain(record_type_arg_value_11(arecord(
                                      setstr("value","None"),
                                      setstr("arg","vararg")))),
                                   achain(record_type_arg_value_12(arecord(
                                      setstr("value","None"),
                                      setstr("arg","kwarg")))),
                                   achain(record_type_arg_value_16(arecord(
                                      setrec("value", record_type_a_list_15(arecord(
                                        setrec("a_list", record_type_ctx_elts_14(arecord(
                                          setattr("elts", attribute_elts_type_list_13 (alist_0())),
                                          setstr("ctx","Ld"))))))),
                                      setstr("arg","defaults"))))))),
                                  nilattr("kwargs"),
                                  setattr("args", attribute_args_type_list_17 (alist_0())),
                                  setstr("func","arguments"),
                                  nilattr("starargs"))))))),
                              setstr("arg","args")))),
                           achain(record_type_arg_value_28(arecord(
                              setrec("value", record_type_a_list_27(arecord(
                                setrec("a_list", record_type_ctx_elts_26(arecord(
                                  setattr("elts", attribute_elts_type_list_21 (alist_1(
                                   achain(record_type_Call_25(arecord(
                                      setrec("Call", record_type_args_func_keywords_kwargs_starargs_24(arecord(
                                        setattr("keywords", attribute_keywords_type_list_22 (alist_0())),
                                        nilattr("kwargs"),
                                        setattr("args", attribute_args_type_list_23 (alist_0())),
                                        setstr("func","Pass"),
                                        nilattr("starargs")))))))))),
                                  setstr("ctx","Ld"))))))),
                              setstr("arg","body")))),
                           achain(record_type_arg_value_32(arecord(
                              setrec("value", record_type_a_list_31(arecord(
                                setrec("a_list", record_type_ctx_elts_30(arecord(
                                  setattr("elts", attribute_elts_type_list_29 (alist_0())),
                                  setstr("ctx","Ld"))))))),
                              setstr("arg","decorator_list"))))))),
                          nilattr("kwargs"),
                          setattr("args", attribute_args_type_list_33 (alist_0())),
                          setstr("func","FunctionDef"),
                          nilattr("starargs")))))))))),
                    setstr("ctx","Ld"))))))),
                setstr("arg","body"))))))),
            nilattr("kwargs"),
            setattr("args", attribute_args_type_list_39 (alist_0())),
            setstr("func","Module"),
            nilattr("starargs")))))))))))))))
