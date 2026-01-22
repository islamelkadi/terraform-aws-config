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

# Account-level Config Aggregator
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

  # Account aggregation (enabled)
  enable_account_aggregation = var.enable_account_aggregation
  aggregation_account_ids    = var.aggregation_account_ids

  # Organization aggregation (disabled)
  enable_organization_aggregation  = var.enable_organization_aggregation
  organization_aggregator_role_arn = var.organization_aggregator_role_arn

  # Tags
  additional_tags = var.additional_tags
}
