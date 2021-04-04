locals {
  sg-name = "default"
}

resource "aws_vpc" "vpc" {

  cidr_block           = var.cidr_range
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = local.tags
}

resource "aws_flow_log" "vpc_flow_log" {
  iam_role_arn    = aws_iam_role.vpc_flow_log_role.arn
  log_destination = aws_cloudwatch_log_group.vpc_flow_log_group.arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.vpc.id

  tags = local.tags
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.vpc.id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.tags, {
    Name = local.sg-name
    vpc  = aws_vpc.vpc.id
  })
}