# Environment configuration
environment  = "prod"
region       = "us-east-1"
project_name = "compliance"
organization = "my-org"

# Config Aggregator configuration
aggregator_name           = "org-wide-aggregator"
enable_all_regions        = true
aggregator_target_regions = []

# Organization aggregation (enabled)
enable_organization_aggregation  = true
organization_aggregator_role_arn = null # Uses AWS service-linked role

# Account aggregation (disabled - mutually exclusive)
enable_account_aggregation = false
aggregation_account_ids    = []

# Additional tags
additional_tags = {
  ManagedBy   = "Terraform"
  Purpose     = "Organization Config Aggregation"
  Environment = "Production"
}
