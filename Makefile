install:
	pyinstaller run --onefile --name i
	cp dist/i ~/bin/i

clean:
	rm -rf build
	rm -rf dist

test:
	pytest --cov-report html --cov=i tests/
