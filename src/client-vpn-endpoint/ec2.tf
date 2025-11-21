resource "aws_ec2_client_vpn_endpoint" "client_vpn_endpoint" {

  dynamic "authentication_options" {
    for_each = var.auth_type == "federated-authentication" ? ["one_entry"] : []
    content {
      type              = var.auth_type
      saml_provider_arn = var.auth_saml_provider_arn
    }
  }

  dynamic "authentication_options" {
    for_each = var.auth_type == "certificate-authentication" ? ["one_entry"] : []
    content {
      type                       = var.auth_type
      root_certificate_chain_arn = var.auth_root_certificate_chain_arn
    }
  }

  dynamic "authentication_options" {
    for_each = var.auth_type == "directory-service-authentication" ? ["one_entry"] : []
    content {
      type                = var.auth_type
      active_directory_id = var.auth_active_directory_id
    }
  }

  client_cidr_block = var.client_cidr_block

  connection_log_options {
    enabled               = true
    cloudwatch_log_group  = aws_cloudwatch_log_group.log_group.name
    cloudwatch_log_stream = aws_cloudwatch_log_stream.log_stream.name
  }

  description = var.description
  dns_servers = var.dns_servers

  split_tunnel           = var.split_tunnel
  server_certificate_arn = var.server_certificate_arn

  transport_protocol = var.transport_protocol

  tags = var.tags
}