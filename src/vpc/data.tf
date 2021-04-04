data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_iam_policy_document" "flow_log_assume_policy" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]

    principals {
      type = "Service"
      identifiers = [
        "vpc-flow-logs.amazonaws.com"
      ]
    }
  }
}

data "aws_iam_policy_document" "flow_log_policy" {
  statement {
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
      "logs:DescribeLogGroups",
      "logs:DescribeLogStreams"
    ]

    resources = [
      "*"
    ]

    effect = "Allow"
  }
}