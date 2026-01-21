output "config_aggregator_arn" {
  description = "The ARN of the created AWS config aggregator"
  value       = aws_config_configuration_aggregator.this.arn
}

output "config_aggregator_id" {
  description = "The ID of the created AWS config aggregator"
  value       = aws_config_configuration_aggregator.this.id
}
