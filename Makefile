# Makefile for pvb.mx

.PHONY: all render preview clean deploy help

# Default target
all: render

# Render the Quarto site
render:
	quarto render

# Preview the site locally
preview:
	quarto preview

# Clean generated files
clean:
	rm -rf _site .quarto

# Deploy to GitHub Pages
deploy: render
	quarto publish gh-pages --no-prompt

# Show help
help:
	@echo "Available targets:"
	@echo "  all      - Render site (default)"
	@echo "  render   - Render the Quarto site"
	@echo "  preview  - Preview site locally (hot reload)"
	@echo "  clean    - Remove generated files"
	@echo "  deploy   - Build and deploy to GitHub Pages"
	@echo "  help     - Show this message"
	@echo ""
	@echo "Workflow:"
	@echo "  1. Write content in content/ directory"
	@echo "  2. Run 'make preview' to see changes"
	@echo "  3. Run 'make deploy' to publish"
