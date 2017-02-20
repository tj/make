
# Output to-do items per file.
todo:
	@grep \
		--exclude-dir=./vendor \
		--exclude-dir=./client/node_modules \
		--text \
		--color \
		-nRo ' TODO:.*' .
.PHONY: todo
