
STATIC_DIR ?= public

# Start static file server.
start:
	@browser-sync start --server --serveStatic public --files "$(STATIC_DIR)/**"
.PHONY: start
