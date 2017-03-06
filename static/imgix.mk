ifndef IMGIX_SOURCE_NAME
$(error IMGIX_SOURCE_NAME is required, for example apex-inc, used for the domain.)
endif

IMGIX_HOST = https://$(IMGIX_SOURCE_NAME).imgix.net
IMGIX_DIR ?= build

# Imgix image replacement.
imgix.replace:
	@echo "==> replace images in $(IMGIX_DIR) to $(IMGIX_HOST)"
	@find build -type f -name "*.html" | xargs sed -i '' 's|src="/images|src="$(IMGIX_HOST)/images|g'
	@find build -type f -name "*.html" | xargs sed -i '' 's|href="/images|href="$(IMGIX_HOST)/images|g'
.PHONY: imgix.replace
