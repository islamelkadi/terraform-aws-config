# Organization-Level Config Aggregator Example

Creates an AWS Config aggregator that automatically collects configuration data from all accounts in an AWS Organization. Use this when you have AWS Organizations enabled and want centralized compliance visibility without maintaining an explicit account list.

Organization aggregation automatically discovers new accounts as they join the organization. No per-account authorization is needed — the organization management account or a delegated administrator grants access. Best suited for enterprise environments with many accounts.

## Usage

```bash
terraform init
terraform plan -var-file=params/input.tfvars
terraform apply -var-file=params/input.tfvars
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
