resource "aws_docdb_cluster_instance" "docdb-cluster-instance" {

  identifier_prefix  = var.name
  instance_class     = var.instance_class
  promotion_tier     = var.promotion_tier
  cluster_identifier = var.cluster_identifier
  engine             = var.engine

  # Maintenance
  apply_immediately          = var.apply_immediately
  auto_minor_version_upgrade = var.auto_minor_version_upgrade

  # Backup
  preferred_maintenance_window = var.preferred_maintenance_window

  tags = local.tags
}