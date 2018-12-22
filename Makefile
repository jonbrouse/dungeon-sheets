.PHONY: help 

.DEFAULT: help

CHARACTERS = "ernest_goodfellow"

help:
	@echo "Make Help"
	@echo "Create a character sheet from examples/warlock.py:"
	@echo "\tmake sheet character=warlock "

sheet:
	@#[ ! -z $(character) ] || { echo "ERROR: \"character\" variable was not set.\n\n" && make help && exit 1; }
	CHARACTER=ernest_goodfellow docker-compose up
	@#$(foreach character, $(CHARACTERS), $(MAKE) $(service) || exit 1;)
build:
	docker-compose build
