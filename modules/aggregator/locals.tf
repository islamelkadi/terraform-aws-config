# Local values for naming and tagging

locals {
  # Use metadata module for standardized naming
  aggregator_name = module.metadata.resource_prefix

  # Merge tags with defaults
  tags = merge(
    var.tags,
    module.metadata.security_tags,
    {
      Name   = module.metadata.resource_prefix
      Module = "terraform-aws-config-aggregator"
    }
  )
}
