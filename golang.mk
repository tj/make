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

# Show size of imports.
size:
	@curl -sL https://gist.githubusercontent.com/tj/04e0965e23da00ca33f101e5b2ed4ed4/raw/9aa16698b2bc606cf911219ea540972edef05c4b/gistfile1.txt | bash
.PHONY: size
