.PHONY: help
help:
	@echo ""
	@echo "  deps       to install the required files for development"
	@echo "  package    to create a distribution package in /dist/"
	@echo "  release    to perform a release build, including deps, test, and package targets"
	@echo "  test       to run all tests"
	@echo ""

.PHONY: release
release: deps test package

.PHONY: deps
deps:
	pip install -r requirements.txt

.PHONY: package
package:
	python build.py


.PHONY: test
test:
	/Users/stefankraus/.virtualenvs/dev-heaven/bin/python /Users/stefankraus/.virtualenvs/dev-heaven/bin/nosetests --with-coverage
