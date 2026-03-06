# Terraform AWS Config Module

Reusable Terraform module for AWS Config service with aggregation support.

## Submodules

| Submodule | Description |
|-----------|-------------|
| [aggregator](modules/aggregator/) | AWS Config Aggregator for multi-account/region compliance |

## Usage

```hcl
module "config_aggregator" {
  source = "path/to/terraform-aws-config/modules/aggregator"

  organization = "ws"
  environment  = "prod"
  project_name = "compliance"
  region       = "us-east-1"

  aggregator_name    = "org-aggregator"
  enable_all_regions = true

  enable_organization_aggregation = true

  additional_tags = var.tags
}
```

## Security Controls

Implements controls for FSBP, CIS, NIST 800-53/171, and PCI DSS v4.0:

- Continuous recording of resource configurations
- Automated compliance rule evaluation
- KMS encryption for configuration snapshots
- SNS notifications for compliance violations
- IAM least privilege for Config service role
- Security control overrides with audit justification

## Module Structure

```
terraform-aws-config/
├── modules/
│   └── aggregator/
│       └── ...
└── README.md
```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0 |
| aws | >= 5.0 |
