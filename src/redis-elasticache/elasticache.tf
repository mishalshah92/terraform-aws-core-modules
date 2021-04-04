resource "aws_elasticache_replication_group" "redis_cache" {
  replication_group_id          = var.name
  replication_group_description = var.description

  # Redis config
  engine         = "redis"
  engine_version = var.redis_version
  port           = var.redis_port

  # Configurations
  subnet_group_name    = var.subnet_group_name
  parameter_group_name = var.parameter_group_name

  # Node config
  node_type = var.node_type

  # Network
  availability_zones   = var.availability_zones
  security_group_names = var.redis_security_group_names
  security_group_ids   = var.security_group_ids

  # Encryption
  at_rest_encryption_enabled = var.at_rest_encryption_enabled
  transit_encryption_enabled = var.transit_encryption_enabled
  auth_token                 = var.transit_encryption_enabled ? random_password.postgres_password.0.result : null
  kms_key_id                 = var.kms_key_arn

  # Failover
  maintenance_window         = var.maintenance_window
  snapshot_window            = var.snapshot_window
  snapshot_retention_limit   = var.snapshot_retention_limit
  apply_immediately          = var.apply_immediately
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  automatic_failover_enabled = var.automatic_failover_enabled

  # Notification
  notification_topic_arn = var.notification_topic_arn

  # Cluster mode

  cluster_mode {
    replicas_per_node_group = var.replicas_per_node_group
    num_node_groups         = var.num_node_groups
  }

  lifecycle {
    ignore_changes = [
      cluster_mode
    ]
  }

  # Tags
  tags = local.tags
}

resource "random_password" "postgres_password" {

  count = var.transit_encryption_enabled ? 1 : 0

  length           = 16
  special          = true
  override_special = "!#$%^&*()"
}
