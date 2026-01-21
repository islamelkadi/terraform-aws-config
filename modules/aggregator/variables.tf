# Generic module variables
variable "environment" {
  description = "The name of the environment to deploy the config aggregator (dev, test, prod, etc). This is used for semantic organization."
  type        = string
}

variable "region" {
  description = "The name of the AWS region to deploy the config aggregator."
  type        = string
}

variable "project_name" {
  description = "A unique name to assign for this project. This is used for semantic organization."
  type        = string
}

variable "organization" {
  description = "The name of the organization to deploy the config aggregator. This is used for semantic organization."
  type        = string
}

variable "additional_tags" {
  description = "A map of generic additional tags to blanket apply to resources created via this module."
  type        = map(string)
  default     = {}
}

# AWS Config Aggregator variables
variable "aggregator_name" {
  description = "A unique name to assign to this AWS configuration aggregator."
  type        = string
}

variable "enable_all_regions" {
  description = "A flag to enable aggregating data from all AWS regions."
  type        = bool
  default     = true
}

variable "aggregator_target_regions" {
  description = "A list of target regions to aggregate config data from (used when all_regions is false)."
  type        = list(string)
  default     = []
}

variable "enable_account_aggregation" {
  description = "A flag to enable AWS account(s) aggregation source type."
  type        = bool
  default     = false
}

variable "aggregation_account_ids" {
  description = "A list of target AWS account IDs to aggregate config data from."
  type        = list(string)
  default     = []
}

variable "enable_organization_aggregation" {
  description = "A flag to enable AWS Organization aggregation source type."
  type        = bool
  default     = false
}

variable "organization_aggregator_role_arn" {
  description = "The IAM role ARN to use to allow AWS Config uses to aggregate config data."
  type        = string
  default     = null
}
