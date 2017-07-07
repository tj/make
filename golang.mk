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

# Release binaries to GitHub.
release:
	@goreleaser --rm-dist --config .goreleaser.yml
.PHONY: release
