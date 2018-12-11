PROJECT=$(shell pwd)
BUILD=$(shell git rev-parse HEAD)

default: ubl20 ubl21 ubl22

ubl20:
	@docker run --rm -i \
		-v $(PROJECT):/src \
		difi/vefa-validator \
		build -x -t -n ubl20 -a ubl-2.0 -b $(BUILD) -target ubl-2.0/target /src

ubl21:
	@docker run --rm -i \
		-v $(PROJECT):/src \
		difi/vefa-validator \
		build -x -t -n ubl21 -a ubl-2.1 -b $(BUILD) -target ubl-2.1/target /src

ubl22:
	@docker run --rm -i \
		-v $(PROJECT):/src \
		difi/vefa-validator \
		build -x -t -n org.oasis-open.ubl.22 -a ubl-2.2 -b $(BUILD) -target ubl-2.2/target /src
