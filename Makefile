PROJECT=$(shell pwd)

default: ubl20 ubl21

ubl20:
	@docker run --rm -i \
		-v $(PROJECT):/src \
		difi/vefa-validator \
		build -x -t -n ubl20 -a ubl-2.0 -target ubl-2.0/target /src

ubl21:
	@docker run --rm -i \
		-v $(PROJECT):/src \
		difi/vefa-validator \
		build -x -t -n ubl21 -a ubl-2.1 -target ubl-2.1/target /src
