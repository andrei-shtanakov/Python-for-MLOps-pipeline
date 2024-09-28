install:
	pip install --upgrade pip && pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C *.py

clean:
	rm -rf .pytest_cache/
	rm -rf  __pycache__/
	rm -rf  hello.egg-info/

all: install test format lint

