rdflib_data :
	python lib/rdflib_data_total.py

runtest :
	python pythoscope_test.py

test1 :
	python do_nose_via_forkr.py

rdflib :
	python rdflib2.py

all :
	python ./generate_params.py
