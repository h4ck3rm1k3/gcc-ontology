import qualified Language.Haskell.Exts.Parser as Parser
import Language.Haskell.Exts
import Data.Foldable
import Text.Show

main :: IO ()
main = do
--  let files = ["simple2.hs", "simple3.hs", "example_empty_python_method2.hs","FakeAst.hs","simple4a.hs","simple.dump-parsed-ast4.hs","example_empty_python_method_call.hs","simple0.dump-parsed-ast2.hs","simple4.dump-parsed-ast.hs","simple.dump-parsed-ast5.hs","example_empty_python_method.hs","simple0.dump-parsed-ast.hs","simple4.hs","simple.dump-parsed-ast.hs","example_python_ast_in_haskell.hs","simple0.hs","simple5.dump-parsed-ast.hs","simple.hs","example_simple_python_method_ast.hs","simple2.dump-parsed-ast.hs","simple5.hs","template_haskell.hs","FakeAst2.hs","simple2.hs","simple6.dump-parsed-ast.hs","test_gch.hs","FakeAst3.hs","simple2i.hs","simple6.hs","test_haskell1.hs","FakeAst4.hs","simple3.dump-parsed-ast.hs","simple.dump-parsed-ast2.hs","test_list.hs","FakeAst5.hs","simple3.hs","simple.dump-parsed-ast3.hs","testlist.hs" ]
  let files = ["test_haskell1_a.hs","test_haskell1_a1.hs" ]
  forM_ files $ \s ->  do
    f <- readFile s
    let parseMode = defaultParseMode { parseFilename = s }
    let p = Parser.parseModuleWithMode parseMode f
    --print p
    let out_file = s ++ ".out"
    let show_string = show p
    writeFile out_file show_string
