terraform {
  required_version = ">= 1.14.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Organization-level Config Aggregator
module "config_aggregator" {
  source = "../../modules/config/aggregator"

  # Generic variables
  environment  = var.environment
  region       = var.region
  project_name = var.project_name
  organization = var.organization

  # Aggregator configuration
  aggregator_name           = var.aggregator_name
  enable_all_regions        = var.enable_all_regions
  aggregator_target_regions = var.aggregator_target_regions

  # Organization aggregation (enabled)
  enable_organization_aggregation  = var.enable_organization_aggregation
  organization_aggregator_role_arn = var.organization_aggregator_role_arn

  # Account aggregation (disabled)
  enable_account_aggregation = var.enable_account_aggregation
  aggregation_account_ids    = var.aggregation_account_ids

  # Tags
  additional_tags = var.additional_tags
}
