import qualified Language.Haskell.Exts.Parser as Parser
import Language.Haskell.Exts
import Data.Foldable
import Text.Show

main :: IO ()
main = do
--  let files = ["simple2.hs", "simple3.hs", "example_empty_python_method2.hs","FakeAst.hs","simple4a.hs","simple.dump-parsed-ast4.hs","example_empty_python_method_call.hs","simple0.dump-parsed-ast2.hs","simple4.dump-parsed-ast.hs","simple.dump-parsed-ast5.hs","example_empty_python_method.hs","simple0.dump-parsed-ast.hs","simple4.hs","simple.dump-parsed-ast.hs","example_python_ast_in_haskell.hs","simple0.hs","simple5.dump-parsed-ast.hs","simple.hs","example_simple_python_method_ast.hs","simple2.dump-parsed-ast.hs","simple5.hs","template_haskell.hs","FakeAst2.hs","simple2.hs","simple6.dump-parsed-ast.hs","test_gch.hs","FakeAst3.hs","simple2i.hs","simple6.hs","test_haskell1.hs","FakeAst4.hs","simple3.dump-parsed-ast.hs","simple.dump-parsed-ast2.hs","test_list.hs","FakeAst5.hs","simple3.hs","simple.dump-parsed-ast3.hs","testlist.hs" ]
  let files = [
        "test_haskell1_a.hs"
          --"test_haskell1_a1.hs" , "test_haskell1_a1.hs_tmp.hs", "test_haskell1_a.hs_tmp.hs"
        --"test_haskell1_a1.hs_tmp.hs_tmp.hs"
              ]
  forM_ files $ \s ->  do
    f <- readFile s
    let parseMode = defaultParseMode { parseFilename = s }
    let p = Parser.parseModuleWithMode parseMode f

    case p of
      ParseOk res -> do
        let out_file = s ++ "_tmp.hs"
        let show_string = "module Foo where\n" ++
              "import Language.Haskell.Exts.Syntax\n" ++
              "import Language.Haskell.Exts.SrcLoc\n" ++
              "f x =" ++ show res
        writeFile out_file show_string              
      _ -> print "wtf"
    --print p

    --let p2 = Parser.parseModuleWithMode parseMode show_string
    --let show_string2 = show p2
    
    -- let p3 = Parser.parseModuleWithMode parseMode show_string2
    -- let show_string3 = show p3
    
    -- let p4 = Parser.parseModuleWithMode parseMode show_string3
    -- let show_string4 = show p4

    -- let p5 = Parser.parseModuleWithMode parseMode show_string4
    -- let show_string5 = show p5

    -- let p6 = Parser.parseModuleWithMode parseMode show_string5
    -- let show_string6 = show p6
    

