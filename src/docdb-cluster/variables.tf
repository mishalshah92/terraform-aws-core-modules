variable "name" {
  type = string
}

variable "engine" {
  type    = string
  default = "docdb"
}

variable "engine_version" {
  type = string
}

variable "master_username" {
  type = string
}

variable "master_password" {
  type = string
}

variable "port" {
  type = number
}

variable "deletion_protection" {
  type = bool
}

# Storage

variable "kms_key_id" {
  type    = string
  default = null
}

variable "storage_encrypted" {
  type    = bool
  default = false
}

# Logging

variable "enabled_cloudwatch_logs_exports" {
  type    = list
  default = []
}

# Network

variable "availability_zones" {
  type    = list
  default = []
}

variable "vpc_security_group_ids" {
  type    = list
  default = []
}

variable "db_subnet_group_name" {
  type    = string
  default = null
}

variable "db_cluster_parameter_group_name" {
  type    = string
  default = null
}

# Maintenance

variable "apply_immediately" {
  type    = bool
  default = false
}

# Backup & Restore

variable "backup_retention_period" {
  type    = number
  default = 1
}

variable "preferred_backup_window" {
  type = string
}

variable "skip_final_snapshot" {
  type    = bool
  default = false
}

variable "final_snapshot_identifier" {
  type    = string
  default = null
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

variable "resource_group" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}