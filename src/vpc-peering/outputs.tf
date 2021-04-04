output "id" {
  value = aws_vpc_peering_connection.peering.id
}

output "status" {
  value = aws_vpc_peering_connection.peering.auto_accept
}