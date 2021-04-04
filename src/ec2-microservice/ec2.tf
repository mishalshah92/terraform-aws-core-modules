resource "aws_security_group" "ec2_sg" {
  description = "Security group for ec2 machine of Service."
  vpc_id      = var.vpc_id

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"

    cidr_blocks = [
      "0.0.0.0/0",
    ]
  }

  tags = local.tags
}

# Allow VPC traffic
//resource "aws_security_group_rule" "service_local_access" {
//  security_group_id = aws_security_group.ec2_sg.id
//  type              = "ingress"
//  from_port         = 0
//  to_port           = 65534
//  protocol          = "tcp"
//  cidr_blocks = [
//    data.aws_vpc.vpc.cidr_block
//  ]
//}