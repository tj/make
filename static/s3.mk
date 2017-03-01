
ifndef S3_BUCKET
$(error S3_BUCKET is required)
endif

ifndef S3_SYNC_DIR
$(error S3_SYNC_DIR is required, and should point to the static files directory for syncing)
endif

# Sync static site to S3.
s3.sync:
	@echo "==> syncing $(S3_SYNC_DIR) to $(S3_BUCKET)"
	@aws s3 sync $(S3_SYNC_DIR) s3://$(S3_BUCKET)
.PHONY: static.sync
