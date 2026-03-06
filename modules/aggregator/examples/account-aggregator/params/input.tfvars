namespace   = "example"
environment = "dev"
name        = "account-aggregator"
region      = "us-east-1"

enable_all_regions        = false
aggregator_target_regions = ["us-east-1", "us-west-2"]

enable_account_aggregation = true
aggregation_account_ids    = ["123456789012", "234567890123"]

tags = {
  Example = "CONFIG_ACCOUNT_AGGREGATOR"
}
