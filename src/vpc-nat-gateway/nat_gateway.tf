resource "aws_eip" "nat_gw_eip" {
  tags = local.tags
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gw_eip.id
  subnet_id     = var.public_subnet_id
  tags          = local.tags
}