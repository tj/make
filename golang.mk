include github.com/tj/make/cloc
include github.com/tj/make/todo

# Run all tests.
test:
	@go test -cover ./...
.PHONY: test

# Install the commands.
install:
	@go install ./cmd/...
.PHONY: install

# Build release binaries.
build:
	@gox -os="linux darwin windows openbsd" ./...
.PHONY: build
