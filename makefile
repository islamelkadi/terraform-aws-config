# Terraform Module: Config
# This makefile provides common Terraform operations for the Config module

.PHONY: help init validate fmt lint security plan clean docs submodules

# Default target
help:
	@echo "Available targets:"
	@echo "  init       - Initialize Terraform (download providers)"
	@echo "  validate   - Validate Terraform configuration"
	@echo "  fmt        - Format Terraform files"
	@echo "  lint       - Run tflint on configuration"
	@echo "  security   - Run security scan with checkov"
	@echo "  docs       - Generate module documentation"
	@echo "  submodules - Run all checks on submodules"
	@echo "  clean      - Remove Terraform state and cache files"
	@echo "  all        - Run init, fmt, validate, lint, security, docs, submodules"

# Initialize Terraform
init:
	@echo "Initializing Terraform..."
	terraform init -upgrade

# Validate configuration
validate: init
	@echo "Validating Terraform configuration..."
	terraform validate

# Format Terraform files
fmt:
	@echo "Formatting Terraform files..."
	terraform fmt -recursive

# Run tflint
lint: init
	@echo "Running tflint..."
	tflint --init
	tflint

# Run security scan
security:
	@echo "Running security scan with checkov..."
	checkov -d . --config-file .checkov.yaml

# Generate documentation
docs:
	@echo "Generating module documentation..."
	terraform-docs markdown table --output-file README.md --output-mode inject .

# Run checks on submodules
submodules:
	@echo "Running checks on submodules..."
	@for dir in modules/*/; do \
		if [ -f "$$dir/makefile" ]; then \
			echo "Processing $$dir..."; \
			$(MAKE) -C $$dir all; \
		fi; \
	done

# Clean Terraform files
clean:
	@echo "Cleaning Terraform files..."
	rm -rf .terraform .terraform.lock.hcl
	@for dir in modules/*/; do \
		if [ -f "$$dir/makefile" ]; then \
			$(MAKE) -C $$dir clean; \
		fi; \
	done

# Run all checks
all: init fmt validate lint security docs submodules
	@echo "All checks completed successfully!"
