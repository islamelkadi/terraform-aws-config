resource "aws_config_configuration_aggregator" "this" {
  name   = "${local.project_id_prefix}-${var.aggregator_name}"
  region = var.region
  tags   = var.additional_tags

  dynamic "account_aggregation_source" {
    for_each = var.enable_account_aggregation ? [1] : []

    content {
      account_ids = var.aggregation_account_ids
      all_regions = var.enable_all_regions
      regions     = var.enable_all_regions ? null : var.aggregator_target_regions
    }
  }

  dynamic "organization_aggregation_source" {
    for_each = var.enable_organization_aggregation ? [1] : []

    content {
      all_regions = var.enable_all_regions
      regions     = var.enable_all_regions ? null : var.aggregator_target_regions
      role_arn    = var.organization_aggregator_role_arn != null ? var.organization_aggregator_role_arn : data.aws_iam_role.config_service_role[0].arn
    }
  }
}
