SHELL := /bin/bash

install:
	pip install --user pipenv && \
		pipenv --python 3.12 && \
		pipenv shell && \
		pipenv install -r requirements.txt && \
		pipenv shell

activate:
	pipenv shell

test:
	python -m pytest -vv test_*.py

format:
	black *.py

lint:
	pylint --disable=R,C *.py

clean:
	rm -rf .pytest_cache/
	rm -rf  __pycache__/
	rm -rf  hello.egg-info/

all: install  test format lint

