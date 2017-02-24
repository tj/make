
NEUTRINO=node_modules/.bin/neutrino

# Start app.
start:
	@$(NEUTRINO) start
.PHONY: start

# Build app.
build:
	@$(NEUTRINO) build
.PHONY: build
