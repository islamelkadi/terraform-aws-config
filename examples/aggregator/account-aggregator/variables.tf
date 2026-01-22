variable "environment" {
  description = "Environment name"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "organization" {
  description = "Organization name"
  type        = string
}

variable "aggregator_name" {
  description = "Config aggregator name"
  type        = string
}

variable "enable_all_regions" {
  description = "Enable all regions"
  type        = bool
  default     = true
}

variable "aggregator_target_regions" {
  description = "Target regions"
  type        = list(string)
  default     = []
}

variable "enable_organization_aggregation" {
  description = "Enable organization aggregation"
  type        = bool
  default     = false
}

variable "organization_aggregator_role_arn" {
  description = "Organization aggregator role ARN"
  type        = string
  default     = null
}

variable "enable_account_aggregation" {
  description = "Enable account aggregation"
  type        = bool
  default     = false
}

variable "aggregation_account_ids" {
  description = "Account IDs to aggregate"
  type        = list(string)
  default     = []
}

variable "additional_tags" {
  description = "Additional tags"
  type        = map(string)
  default     = {}
}
