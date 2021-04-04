resource "aws_docdb_cluster" "docdb-cluster" {
  cluster_identifier_prefix = var.name
  engine                    = var.engine
  engine_version            = var.engine_version
  port                      = var.port
  master_username           = var.master_username
  master_password           = var.master_password

  deletion_protection = var.deletion_protection

  # Storage
  storage_encrypted = var.storage_encrypted
  kms_key_id        = var.kms_key_id

  # Logging
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

  # Network
  # availability_zones              = var.availability_zones
  vpc_security_group_ids          = var.vpc_security_group_ids
  db_subnet_group_name            = var.db_subnet_group_name
  db_cluster_parameter_group_name = var.db_cluster_parameter_group_name

  # backup
  backup_retention_period   = var.backup_retention_period
  preferred_backup_window   = var.preferred_backup_window
  skip_final_snapshot       = var.skip_final_snapshot
  final_snapshot_identifier = var.final_snapshot_identifier

  # Maintenance
  apply_immediately = var.apply_immediately

  tags = local.tags
}