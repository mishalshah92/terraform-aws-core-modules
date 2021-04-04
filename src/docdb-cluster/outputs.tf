output "id" {
  value = aws_docdb_cluster.docdb-cluster.id
}

output "name" {
  value = aws_docdb_cluster.docdb-cluster.cluster_identifier
}

output "cluster_identifier" {
  value = aws_docdb_cluster.docdb-cluster.cluster_identifier
}

output "arn" {
  value = aws_docdb_cluster.docdb-cluster.arn
}

output "endpoint" {
  value = aws_docdb_cluster.docdb-cluster.endpoint
}

output "final_snapshot_identifier" {
  value = aws_docdb_cluster.docdb-cluster.final_snapshot_identifier
}

output "cluster_resource_id" {
  value = aws_docdb_cluster.docdb-cluster.cluster_resource_id
}

output "cluster_members" {
  value = aws_docdb_cluster.docdb-cluster.cluster_members
}

output "hosted_zone_id" {
  value = aws_docdb_cluster.docdb-cluster.hosted_zone_id
}