resource "aws_vpc_peering_connection" "peering" {
  vpc_id      = var.vpc_id
  auto_accept = var.auto_accept

  # Peering
  peer_owner_id = var.peer_account
  peer_vpc_id   = var.peer_vpc_id
  peer_region   = var.peer_region

  accepter {
    allow_remote_vpc_dns_resolution = var.allow_accepter_remote_vpc_dns_resolution
  }

  requester {
    allow_remote_vpc_dns_resolution = var.allow_requester_remote_vpc_dns_resolution
  }

  tags = local.tags
}