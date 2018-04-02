all:
	./bin/kalamine docs/samples/*.yaml

clean:
	rm -rf dist/*

lint:
	flake8 kalamine

publish-deps:
	pip3 install --user twine wheel

publish:
	flake8 kalamine
	rm -rf dist/*
	python3 setup.py bdist_wheel
	python3 setup.py sdist
	twine upload dist/*

install:
	pip3 install --user -e .
