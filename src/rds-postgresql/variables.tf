variable "name" {
  type = string
}

# General

variable "instance_class" {
  type = string
}

variable "kms_key_arn" {
  type    = string
  default = null
}

variable "performance_insights_enabled" {
  type    = bool
  default = false
}

# Database

variable "engine" {
  type    = string
  default = "postgres"
}

variable "engine_version" {
  type = string
}

variable "db_name" {
  type    = string
  default = null
}

variable "parameter_group_name" {
  type    = string
  default = null
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

# Network

variable "vpc_security_group_ids" {
  type = list
}

variable "db_subnet_group_name" {
  type = string
}

variable "multi_az" {
  type    = bool
  default = false
}

variable "publicly_accessible" {
  type    = bool
  default = false
}

# Updates

variable "allow_major_version_upgrade" {
  type    = bool
  default = false
}

variable "apply_immediately" {
  type    = bool
  default = false
}

variable "auto_minor_version_upgrade" {
  type    = bool
  default = true
}

# Backup

variable "backup_retention_period" {
  type    = number
  default = 0
}

variable "backup_window_range_utc" {
  type = string
}

variable "delete_automated_backups" {
  type    = bool
  default = false
}

variable "skip_final_snapshot" {
  type    = bool
  default = false
}

variable "final_snapshot_identifier" {
  type = string
}

# Others

variable "copy_tags_to_snapshot" {
  type    = bool
  default = true
}

variable "deletion_protection" {
  type    = string
  default = true
}

variable "maintenance_window" {
  description = "Format of rage is {ddd:hh24:mi-ddd:hh24:mi}. Eg: {Mon:00:00-Mon:03:00}."
  type        = string
}

# Storage

variable "iops" {
  type    = string
  default = null
}

variable "allocated_storage" {
  type    = number
  default = 20
}

variable "max_allocated_storage" {
  type    = number
  default = 100
}

variable "storage_type" {
  type    = string
  default = "gp2"
}

# Monitoring

variable "monitoring_interval" {
  type    = number
  default = 0
}

variable "monitoring_role_arn" {
  type    = string
  default = null
}

# Logging

variable "enabled_cloudwatch_logs_exports" {
  type    = list
  default = []
}

# tags
variable "customer" {
  type = string
}

variable "env" {
  type = string
}

variable "owner" {
  type = string
}

variable "email" {
  type = string
}

variable "repo" {
  type = string
}

variable "resource_group" {
  type = string
}

variable "deployment" {
  type = string
}

variable "module" {
  type = string
}

variable "tool" {
  description = "Automation tool info"
  default     = "Managed by Terraform"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "kubernetes_vpc_tags" {
  type    = map(string)
  default = {}
}