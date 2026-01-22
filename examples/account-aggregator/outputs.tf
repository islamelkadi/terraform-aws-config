output "aggregator_arn" {
  description = "The ARN of the config aggregator"
  value       = module.config_aggregator.config_aggregator_arn
}

output "aggregator_id" {
  description = "The ID of the config aggregator"
  value       = module.config_aggregator.config_aggregator_id
}
