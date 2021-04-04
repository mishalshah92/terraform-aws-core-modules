output "log_group_name" {
  value = aws_cloudwatch_log_group.log_group.*.id
}

output "log_stream" {
  value = aws_cloudwatch_log_stream.log_stream.*.id
}

output "id" {
  value = aws_ec2_client_vpn_endpoint.client_vpn_endpoint.id
}

output "arn" {
  value = aws_ec2_client_vpn_endpoint.client_vpn_endpoint.arn
}

output "status" {
  value = aws_ec2_client_vpn_endpoint.client_vpn_endpoint.status
}

output "dns_name" {
  value = aws_ec2_client_vpn_endpoint.client_vpn_endpoint.dns_name
}