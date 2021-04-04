resource "aws_cloudwatch_log_group" "log_group" {

  name              = "/aws/ec2/client_vpn_endpoint/${var.resource_group}/${var.name}"
  retention_in_days = var.log_retention
  tags              = local.tags
}

resource "aws_cloudwatch_log_stream" "log_stream" {

  name           = "/aws/log-stream/client_vpn_endpoint/${var.resource_group}/${var.name}"
  log_group_name = aws_cloudwatch_log_group.log_group.name
}