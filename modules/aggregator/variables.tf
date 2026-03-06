# Config Aggregator Module Variables

# Metadata variables for consistent naming
variable "namespace" {
  description = "Namespace (organization/team name)"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod"
  }
}

variable "name" {
  description = "Name of the config aggregator"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "AWS region where resources will be created"
  type        = string
}

# AWS Config Aggregator configuration
variable "enable_all_regions" {
  description = "Enable aggregating data from all AWS regions"
  type        = bool
  default     = true
}

variable "aggregator_target_regions" {
  description = "List of target regions to aggregate config data from (used when enable_all_regions is false)"
  type        = list(string)
  default     = []
}

variable "enable_account_aggregation" {
  description = "Enable AWS account(s) aggregation source type"
  type        = bool
  default     = false
}

variable "aggregation_account_ids" {
  description = "List of target AWS account IDs to aggregate config data from"
  type        = list(string)
  default     = []
}

variable "enable_organization_aggregation" {
  description = "Enable AWS Organization aggregation source type"
  type        = bool
  default     = false
}

variable "organization_aggregator_role_arn" {
  description = "IAM role ARN for AWS Config to aggregate config data. Falls back to AWSServiceRoleForConfig if not provided"
  type        = string
  default     = null
}
