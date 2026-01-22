# Environment configuration
environment  = "dev"
region       = "us-east-1"
project_name = "multi-account-compliance"
organization = "my-org"

# Config Aggregator configuration
aggregator_name           = "account-aggregator"
enable_all_regions        = false
aggregator_target_regions = ["us-east-1", "us-west-2"]

# Account aggregation (enabled)
enable_account_aggregation = true
aggregation_account_ids = [
  "123456789012",
  "234567890123",
  "345678901234"
]

# Organization aggregation (disabled - mutually exclusive)
enable_organization_aggregation  = false
organization_aggregator_role_arn = null

# Additional tags
additional_tags = {
  ManagedBy   = "Terraform"
  Purpose     = "Multi-Account Config Aggregation"
  Environment = "Development"
}
