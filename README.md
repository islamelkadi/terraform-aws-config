# Terraform AWS Config Module

Reusable Terraform module for AWS Config service with aggregation support.

## Prerequisites

This module is designed for macOS. The following must already be installed on your machine:
- Python 3 and pip
- [Kiro](https://kiro.dev) and Kiro CLI
- [Homebrew](https://brew.sh)

To install the remaining development tools, run:

```bash
make bootstrap
```

This will install/upgrade: tfenv, Terraform (via tfenv), tflint, terraform-docs, checkov, and pre-commit.

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
| terraform | >= 1.14.3 |
| aws | >= 6.34 |

## Environment-Based Security Controls

Security controls are automatically applied based on the environment through the [terraform-aws-metadata](https://github.com/islamelkadi/terraform-aws-metadata?tab=readme-ov-file#security-profiles){:target="_blank"} module's security profiles:

| Control | Dev | Staging | Prod |
|---------|-----|---------|------|
| KMS encryption | Optional | Required | Required |
| Continuous recording | Optional | Required | Required |
| SNS notifications | Optional | Recommended | Required |
| Multi-region aggregation | Optional | Recommended | Required |

For full details on security profiles and how controls vary by environment, see the <a href="https://github.com/islamelkadi/terraform-aws-metadata?tab=readme-ov-file#security-profiles" target="_blank">Security Profiles</a> documentation.

## MCP Servers

This module includes two [Model Context Protocol (MCP)](https://modelcontextprotocol.io/) servers configured in `.kiro/settings/mcp.json` for use with Kiro:

| Server | Package | Description |
|--------|---------|-------------|
| `aws-docs` | `awslabs.aws-documentation-mcp-server@latest` | Provides access to AWS documentation for contextual lookups of service features, API references, and best practices. |
| `terraform` | `awslabs.terraform-mcp-server@latest` | Enables Terraform operations (init, validate, plan, fmt, tflint) directly from the IDE with auto-approved commands for common workflows. |

Both servers run via `uvx` and require no additional installation beyond the [bootstrap](#prerequisites) step.

<!-- BEGIN_TF_DOCS -->


## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.

## License

MIT Licensed. See [LICENSE](LICENSE) for full details.
<!-- END_TF_DOCS -->
