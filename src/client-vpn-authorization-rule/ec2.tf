resource "aws_ec2_client_vpn_authorization_rule" "authorization_rules" {

  client_vpn_endpoint_id = var.client_vpn_endpoint_id
  target_network_cidr    = var.target_network_cidr
  authorize_all_groups   = true
  description            = var.description
}