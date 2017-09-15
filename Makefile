# install:
# 	python setup.py sdist
# 	pip install dist/*
install:
	cp i ~/bin/i
	cp i.py ~/bin/i.py


build:
	python setup.py sdist

upload:
	python setup.py sdist
	twine upload dist/*

clean:
	rm -rf build
	rm -rf dist

test:
	pytest --cov-report html --cov=i tests/

cov_server:
	cd htmlcov; python -m SimpleHTTPServer
