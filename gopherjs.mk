GOPHERJS_PKG=$(subst $(GOPATH)/src/,,$(PWD))

# Start client dev server.
client.start:
	@gopherjs -m -v serve --http :3000 $(GOPHERJS_PKG)/client
.PHONY: client.start

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
