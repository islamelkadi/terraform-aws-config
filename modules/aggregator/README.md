<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_config_configuration_aggregator.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_aggregator) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tags"></a> [additional\_tags](#input\_additional\_tags) | A map of generic additional tags to blanket apply to resources created via this module. | `map(string)` | `{}` | no |
| <a name="input_aggregation_account_ids"></a> [aggregation\_account\_ids](#input\_aggregation\_account\_ids) | A list of target AWS account IDs to aggregate config data from. | `list(string)` | `[]` | no |
| <a name="input_aggregator_name"></a> [aggregator\_name](#input\_aggregator\_name) | A unique name to assign to this AWS configuration aggregator. | `string` | n/a | yes |
| <a name="input_aggregator_target_regions"></a> [aggregator\_target\_regions](#input\_aggregator\_target\_regions) | A list of target regions to aggregate config data from (used when all\_regions is false). | `list(string)` | `[]` | no |
| <a name="input_enable_account_aggregation"></a> [enable\_account\_aggregation](#input\_enable\_account\_aggregation) | A flag to enable AWS account(s) aggregation source type. | `bool` | `false` | no |
| <a name="input_enable_all_regions"></a> [enable\_all\_regions](#input\_enable\_all\_regions) | A flag to enable aggregating data from all AWS regions. | `bool` | `true` | no |
| <a name="input_enable_organization_aggregation"></a> [enable\_organization\_aggregation](#input\_enable\_organization\_aggregation) | A flag to enable AWS Organization aggregation source type. | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the environment to deploy the config aggregator (dev, test, prod, etc). This is used for semantic organization. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | The name of the organization to deploy the config aggregator. This is used for semantic organization. | `string` | n/a | yes |
| <a name="input_organization_aggregator_role_arn"></a> [organization\_aggregator\_role\_arn](#input\_organization\_aggregator\_role\_arn) | The IAM role ARN to use to allow AWS Config uses to aggregate config data. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | A unique name to assign for this project. This is used for semantic organization. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The name of the AWS region to deploy the config aggregator. | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_config_aggregator_arn"></a> [config\_aggregator\_arn](#output\_config\_aggregator\_arn) | The ARN of the created AWS config aggregator |
| <a name="output_config_aggregator_id"></a> [config\_aggregator\_id](#output\_config\_aggregator\_id) | The ID of the created AWS config aggregator |
<!-- END_TF_DOCS -->
