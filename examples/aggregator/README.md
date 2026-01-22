# AWS Config Aggregator Examples

This directory contains example implementations of the AWS Config Aggregator module.

## Examples

### 1. Organization-Level Aggregator
**Directory:** `organization-aggregator/`

Aggregates AWS Config data across all accounts in an AWS Organization using the service-linked role.

**Features:**
- Organization-wide aggregation
- All regions enabled
- Uses default service-linked role
- Suitable for centralized compliance teams

**Usage:**
```bash
cd organization-aggregator
terraform init
terraform plan -var-file=params/input.tfvars
terraform apply -var-file=params/input.tfvars
```

**Configuration:** Edit `organization-aggregator/params/input.tfvars`

### 2. Account-Level Aggregator
**Directory:** `account-aggregator/`

Aggregates AWS Config data from specific AWS accounts in selected regions.

**Features:**
- Specific account IDs
- Selected regions only (us-east-1, us-west-2)
- Suitable for cross-account compliance without Organizations

**Usage:**
```bash
cd account-aggregator
terraform init
terraform plan -var-file=params/input.tfvars
terraform apply -var-file=params/input.tfvars
```

**Configuration:** Edit `account-aggregator/params/input.tfvars`

## Customization

Each example has its own `params/input.tfvars` file that you can customize:

**Organization Aggregator:**
```hcl
environment  = "prod"
region       = "us-east-1"
aggregator_name = "org-wide-aggregator"
enable_all_regions = true
enable_organization_aggregation = true
```

**Account Aggregator:**
```hcl
environment  = "dev"
region       = "us-east-1"
aggregator_name = "account-aggregator"
enable_all_regions = false
aggregator_target_regions = ["us-east-1", "us-west-2"]
enable_account_aggregation = true
aggregation_account_ids = ["123456789012", "234567890123"]
```

## Prerequisites

- **AWS Config must be enabled** in the accounts you want to aggregate
- **For Organization aggregation:**
  - AWS Organizations must be set up
  - Config must be enabled in the management account
  - Service-linked role `AWSServiceRoleForConfig` should exist
- **For Account aggregation:**
  - Authorization must be granted from member accounts to the aggregator account

## Important Notes

- **Mutual Exclusivity:** You cannot enable both `enable_account_aggregation` and `enable_organization_aggregation` at the same time
- **Service-Linked Role:** If `organization_aggregator_role_arn` is null, the module automatically uses the AWS service-linked role
- **Region Selection:** Set `enable_all_regions = false` and specify `aggregator_target_regions` to limit aggregation to specific regions
