output "id" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.id
}

output "db_subnet_group_name" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.db_subnet_group_name
}

output "dbi_resource_id" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.dbi_resource_id
}

output "endpoint" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.endpoint
}

output "engine_version" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.engine_version
}

output "kms_key_id" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.kms_key_id
}

output "port" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.port
}

output "preferred_backup_window" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.preferred_backup_window
}

output "storage_encrypted" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.storage_encrypted
}

output "writer" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.writer
}

output "ca_cert_identifier" {
  value = aws_docdb_cluster_instance.docdb-cluster-instance.ca_cert_identifier
}