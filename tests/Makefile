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
