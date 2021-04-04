resource "aws_cloudwatch_log_group" "vpc_flow_log_group" {
  name              = "/aws/vpc/flow-logs/${var.resource_group}/${var.name}"
  retention_in_days = var.flow_log_retention
  tags              = local.tags
}

resource "aws_iam_role" "vpc_flow_log_role" {
  name               = "ServiceVpcFlowLog-${aws_vpc.vpc.id}"
  assume_role_policy = data.aws_iam_policy_document.flow_log_assume_policy.json
  tags               = local.tags
}

resource "aws_iam_role_policy" "vpc_flow_log_policy" {
  name   = "ServiceVpcFlowLog-${aws_vpc.vpc.id}"
  role   = aws_iam_role.vpc_flow_log_role.id
  policy = data.aws_iam_policy_document.flow_log_policy.json
}