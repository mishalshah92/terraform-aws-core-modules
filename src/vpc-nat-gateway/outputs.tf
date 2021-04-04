output "id" {
  value = aws_nat_gateway.nat_gateway.id
}

output "eip_allocation_id" {
  value = aws_nat_gateway.nat_gateway.allocation_id
}

output "private_ip" {
  value = aws_nat_gateway.nat_gateway.private_ip
}

output "public_ip" {
  value = aws_nat_gateway.nat_gateway.public_ip
}
