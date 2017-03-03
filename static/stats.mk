STATS_DIR ?= .

# Output file size stats.
stats:
	@find $(STATS_DIR) -type f | xargs du -h | gsort -rh
.PHONY: stats
