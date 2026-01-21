locals {
  current_region      = data.aws_region.current.region
  account_id          = data.aws_caller_identity.current.account_id
  project_id_prefix   = "${var.environment}-${var.organization}-${var.project_name}"
  project_path_prefix = "/${var.environment}/${var.organization}/${var.project_name}"
}
