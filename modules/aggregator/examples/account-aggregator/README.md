# Account-Level Config Aggregator Example

Creates an AWS Config aggregator that collects configuration data from explicitly listed AWS accounts. Use this when you need to aggregate config data from specific accounts without requiring AWS Organizations.

Account aggregation requires each source account to authorize the aggregator account. Best suited for smaller environments or cross-organization aggregation where you don't have (or don't want to use) AWS Organizations.

## Usage

```bash
terraform init
terraform plan -var-file=params/input.tfvars
terraform apply -var-file=params/input.tfvars
```

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->
