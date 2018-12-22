.PHONY: help 

.DEFAULT: help

#CHARACTERS = "ernest_goodfellow, iliphaer_ervant_of_kos"
CHARACTERS = "iliphaer_ervant_of_kos"

help:
	@echo "Make Help"
	@echo "Create a character sheet from examples/warlock.py:"
	@echo "\tmake sheet character=warlock "

sheet:
	@#[ ! -z $(character) ] || { echo "ERROR: \"character\" variable was not set.\n\n" && make help && exit 1; }
	@$(foreach character, $(CHARACTERS), CHARACTER=$(character) docker-compose up || exit 1;)
build:
	docker-compose build
