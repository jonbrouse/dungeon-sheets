.PHONY: help 

.DEFAULT: help

help:
	@echo "Make Help"
	@echo "Create a character sheet from examples/warlock.py:"
	@echo "\tmake sheet character=warlock "

sheet:
	@[ ! -z $(character) ] || { echo "ERROR: \"character\" variable was not set.\n\n" && make help && exit 1; }
	CHARACTER=$(character) docker-compose up

build:
	docker-compose build
