GOPHERJS_PKG = $(subst $(GOPATH)/src/,,$(PWD))
GOPHERJS_BUILD_FILE ?= client.js
BUILD_DIR ?= build

# Start client dev server.
client.start:
	@gopherjs serve -v -m --http :3000 $(GOPHERJS_PKG)/client
.PHONY: client.start

# Build client javascript bundle.
client.build:
	@gopherjs build $(GOPHERJS_PKG)/client -m -o $(BUILD_DIR)/$(GOPHERJS_BUILD_FILE)
.PHONY: client.build

# Output client dependency graph.
client.deps.graph:
	@godepgraph --tags js -d $(GOPHERJS_PKG)/client | dot -Tsvg | browser
.PHONY: client.deps.graph

# Output client dependency sizes.
client.deps.size:
	@gopherjs build client/*.go -m -o /tmp/out.js
	@du -h /tmp/out.js
	@gopher-count /tmp/out.js | sort -nr
.PHONY: client.deps.size
