
# Deploy to Netlify.
netlify.deploy:
	@echo "==> deploying"
	@netlify deploy
	@echo "==> deployed"
.PHONY: netlify.deploy
