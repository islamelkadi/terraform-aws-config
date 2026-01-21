# Check if the AWS Config service-linked role exists
data "aws_iam_role" "config_service_role" {
  count = var.organization_aggregator_role_arn == null ? 1 : 0
  name  = "AWSServiceRoleForConfig"
}
