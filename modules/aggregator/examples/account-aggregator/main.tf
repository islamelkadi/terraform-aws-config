# Account-level Config Aggregator

module "config_aggregator" {
  source = "../../"

  namespace   = var.namespace
  environment = var.environment
  name        = var.name
  region      = var.region

  enable_all_regions        = var.enable_all_regions
  aggregator_target_regions = var.aggregator_target_regions

  enable_account_aggregation = var.enable_account_aggregation
  aggregation_account_ids    = var.aggregation_account_ids

  tags = var.tags
}
