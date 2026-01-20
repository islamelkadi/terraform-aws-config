variable "namespace" {
  description = "Namespace (organization/team name)"
  type        = string
  default     = "example"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "name" {
  description = "Name for the config aggregator"
  type        = string
  default     = "account-aggregator"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "enable_all_regions" {
  description = "Enable all regions"
  type        = bool
  default     = false
}

variable "aggregator_target_regions" {
  description = "Target regions to aggregate from"
  type        = list(string)
  default     = ["us-east-1", "us-west-2"]
}

variable "enable_account_aggregation" {
  description = "Enable account aggregation"
  type        = bool
  default     = true
}

variable "aggregation_account_ids" {
  description = "Account IDs to aggregate"
  type        = list(string)
  default     = ["123456789012", "234567890123"]
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default = {
    Example = "CONFIG_ACCOUNT_AGGREGATOR"
  }
}
