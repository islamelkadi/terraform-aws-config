module "metadata" {
  source = "git::https://github.com/islamelkadi/terraform-aws-metadata.git?ref=v1.0.0"

  organization  = var.organization
  project_name  = var.project_name
  environment   = var.environment
  region        = var.region
  resource_type = "config-aggregator"
}
