# Organization-level Config Aggregator

module "config_aggregator" {
  source = "../../"

  namespace   = var.namespace
  environment = var.environment
  name        = var.name
  region      = var.region

  enable_all_regions = var.enable_all_regions

  enable_organization_aggregation  = var.enable_organization_aggregation
  organization_aggregator_role_arn = var.organization_aggregator_role_arn

  tags = var.tags
}
