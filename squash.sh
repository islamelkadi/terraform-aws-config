#!/bin/bash
git reset --soft $(git rev-list --max-parents=0 HEAD)
git commit -F- <<EOF
feat!: First publish - Config Terraform module

This initial release provides a production-ready Terraform module for AWS Config with:
- Configuration recorder setup
- Aggregator configuration
- Delivery channel management
- Compliance rules and remediation
- Consistent naming and tagging via metadata module
- Security best practices and compliance
- Complete documentation and examples
- GitHub workflows for CI/CD automation
EOF
# git push --force
