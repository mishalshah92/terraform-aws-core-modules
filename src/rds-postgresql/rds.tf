resource "aws_db_instance" "postgresql_rds_instance" {

  identifier = var.name

  # General
  instance_class = var.instance_class
  kms_key_id     = var.kms_key_arn

  # Database
  engine               = var.engine
  engine_version       = var.engine_version
  name                 = var.db_name
  parameter_group_name = var.parameter_group_name
  username             = var.username
  password             = var.password

  performance_insights_enabled = var.performance_insights_enabled

  # Network
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name
  multi_az               = var.multi_az
  publicly_accessible    = var.publicly_accessible

  # Updates
  allow_major_version_upgrade = var.allow_major_version_upgrade
  apply_immediately           = var.apply_immediately
  auto_minor_version_upgrade  = var.auto_minor_version_upgrade

  # Backup
  backup_retention_period   = var.backup_retention_period
  backup_window             = var.backup_window_range_utc
  delete_automated_backups  = var.delete_automated_backups
  skip_final_snapshot       = var.skip_final_snapshot
  final_snapshot_identifier = var.skip_final_snapshot == false ? var.final_snapshot_identifier : null

  # Others
  copy_tags_to_snapshot = var.copy_tags_to_snapshot
  deletion_protection   = var.deletion_protection
  maintenance_window    = var.maintenance_window

  # Storage
  iops                  = var.storage_type == "io1" ? var.iops : null
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  storage_type          = var.storage_type
  storage_encrypted     = var.kms_key_arn == null ? false : true

  # Monitoring
  monitoring_interval = var.monitoring_interval
  monitoring_role_arn = var.monitoring_role_arn

  # Logging
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports

  # Tags
  tags = local.tags
}