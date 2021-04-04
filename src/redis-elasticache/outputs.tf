output "id" {
  value = aws_elasticache_replication_group.redis_cache.id
}

output "configuration_endpoint_address" {
  value = aws_elasticache_replication_group.redis_cache.configuration_endpoint_address
}

output "primary_endpoint_address" {
  value = aws_elasticache_replication_group.redis_cache.primary_endpoint_address
}

output "member_clusters" {
  value = aws_elasticache_replication_group.redis_cache.member_clusters
}