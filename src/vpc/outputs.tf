output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.vpc_flow_log_group.name
}

output "log_group_iam_role" {
  value = aws_iam_role.vpc_flow_log_role.name
}

output "flow_log_id" {
  value = aws_flow_log.vpc_flow_log.id
}

output "flow_log_arn" {
  value = aws_flow_log.vpc_flow_log.arn
}

output "default_rt_id" {
  value = aws_vpc.vpc.default_route_table_id
}

output "default_sg_id" {
  value = aws_vpc.vpc.default_security_group_id
}

output "default_net_acl_id" {
  value = aws_vpc.vpc.default_network_acl_id
}