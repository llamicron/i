install:
	pyinstaller run --onefile
	cp dist/run ~/bin/i

clean:
	rm -rf build
	rm -rf dist

test:
	pytest --cov-report html --cov=i tests/
