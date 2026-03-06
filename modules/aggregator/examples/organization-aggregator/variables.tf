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
  default     = "org-aggregator"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "enable_all_regions" {
  description = "Enable all regions"
  type        = bool
  default     = true
}

variable "enable_organization_aggregation" {
  description = "Enable organization aggregation"
  type        = bool
  default     = true
}

variable "organization_aggregator_role_arn" {
  description = "Organization aggregator role ARN"
  type        = string
  default     = null
}

variable "tags" {
  description = "Additional tags"
  type        = map(string)
  default = {
    Example = "CONFIG_ORG_AGGREGATOR"
  }
}
