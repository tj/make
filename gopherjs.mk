GOPHERJS_PKG=$(subst $(GOPATH)/src/,,$(PWD))

# Start the dev server.
start:
	@gopherjs -m -v serve --http :3000 $(GOPHERJS_PKG)/client
.PHONY: start

# Display dependency graph.
deps.graph:
	@godepgraph $(GOPHERJS_PKG)/client | dot -Tsvg | browser
.PHONY: deps.graph

# Display size of dependencies.
deps.size:
	@gopherjs build client/*.go -m -o /tmp/out.js
	@du -h /tmp/out.js
	@gopher-count /tmp/out.js | sort -nr
.PHONY: deps.size