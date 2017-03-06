ifndef POSTCSS_SRC
$(error POSTCSS_SRC is required)
endif

# Compile stylesheets with Postcss.
postcss.compile:
	@echo "==> compile stylesheets"
	@$(POSTCSS) \
		--no-map \
		--use postcss-import \
		--use cssnano \
		--output $(POSTCSS_SRC) \
		$(POSTCSS_SRC)
.PHONY: postcss.compile
