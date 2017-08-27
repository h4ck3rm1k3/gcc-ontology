


convert :
	python parseast.py simple0.dump-parsed-ast > simple0.dump-parsed-ast.hs
	python parseast.py simple2.dump-parsed-ast > simple2.dump-parsed-ast.hs
	python parseast.py simple3.dump-parsed-ast > simple3.dump-parsed-ast.hs
	python parseast.py simple4.dump-parsed-ast > simple4.dump-parsed-ast.hs
	python parseast.py simple5.dump-parsed-ast > simple5.dump-parsed-ast.hs
	python parseast.py simple6.dump-parsed-ast > simple6.dump-parsed-ast.hs
	#python parseast.py simple1.dump-parsed-ast > simple1.dump-parsed-ast.hs

compile :
	ghc simple0.dump-parsed-ast.hs
	ghc simple2.dump-parsed-ast.hs
	ghc simple3.dump-parsed-ast.hs
	ghc simple4.dump-parsed-ast.hs
	ghc simple5.dump-parsed-ast.hs
	ghc simple6.dump-parsed-ast.hs

recompile :
	ghc -O -ddump-to-file -ddump-parsed-ast simple0.dump-parsed-ast.hs
	python parseast.py simple0.dump-parsed-ast.dump-parsed-ast > simple0.dump-parsed-ast2.hs
	ghc simple0.dump-parsed-ast2.hs

recompile2:
	ghc simple0.dump-parsed-ast2.hs

recompile3 :
	ghc -O -ddump-to-file -ddump-parsed-ast FakeAst.hs
	python parseast.py FakeAst.dump-parsed-ast > FakeAst2.hs
	ghc FakeAst2.hs

recompile3b:
	ghc FakeAst2.hs

recompile3c :
	ghc -O -ddump-to-file -ddump-parsed-ast FakeAst2.hs
	python parseast.py FakeAst2.dump-parsed-ast > FakeAst3.hs
	ghc FakeAst3.hs

recompile3d:
	ghc FakeAst3.hs

recompile3e :
	ghc -O -ddump-to-file -ddump-parsed-ast FakeAst3.hs
	python parseast.py FakeAst3.dump-parsed-ast > FakeAst4.hs
	ghc FakeAst4.hs
