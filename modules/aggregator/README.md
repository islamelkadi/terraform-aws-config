
<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 6.34 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6.34 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_metadata"></a> [metadata](#module\_metadata) | github.com/islamelkadi/terraform-aws-metadata | v1.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_config_configuration_aggregator.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_aggregator) | resource |
| [aws_iam_role.config_service_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_role) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aggregation_account_ids"></a> [aggregation\_account\_ids](#input\_aggregation\_account\_ids) | List of target AWS account IDs to aggregate config data from | `list(string)` | `[]` | no |
| <a name="input_aggregator_target_regions"></a> [aggregator\_target\_regions](#input\_aggregator\_target\_regions) | List of target regions to aggregate config data from (used when enable\_all\_regions is false) | `list(string)` | `[]` | no |
| <a name="input_enable_account_aggregation"></a> [enable\_account\_aggregation](#input\_enable\_account\_aggregation) | Enable AWS account(s) aggregation source type | `bool` | `false` | no |
| <a name="input_enable_all_regions"></a> [enable\_all\_regions](#input\_enable\_all\_regions) | Enable aggregating data from all AWS regions | `bool` | `true` | no |
| <a name="input_enable_organization_aggregation"></a> [enable\_organization\_aggregation](#input\_enable\_organization\_aggregation) | Enable AWS Organization aggregation source type | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name (dev, staging, prod) | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the config aggregator | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace (organization/team name) | `string` | n/a | yes |
| <a name="input_organization_aggregator_role_arn"></a> [organization\_aggregator\_role\_arn](#input\_organization\_aggregator\_role\_arn) | IAM role ARN for AWS Config to aggregate config data. Falls back to AWSServiceRoleForConfig if not provided | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region where resources will be created | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags to apply to resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_config_aggregator_arn"></a> [config\_aggregator\_arn](#output\_config\_aggregator\_arn) | The ARN of the created AWS config aggregator |
| <a name="output_config_aggregator_id"></a> [config\_aggregator\_id](#output\_config\_aggregator\_id) | The ID of the created AWS config aggregator |

