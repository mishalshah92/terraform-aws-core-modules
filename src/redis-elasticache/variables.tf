variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = "This is creating using Terraform."
}

## Redis config

variable "redis_version" {
  type = string
}

variable "redis_port" {
  type    = number
  default = 6379
}

## Configurations

variable "subnet_group_name" {
  type    = string
  default = null
}

variable "parameter_group_name" {
  type    = string
  default = null
}

## Node config

variable "node_type" {
  type    = string
  default = "cache.r6g.large"
}

## Network
variable "availability_zones" {
  type    = list
  default = null
}

variable "redis_security_group_names" {
  type    = list
  default = null
}

variable "security_group_ids" {
  type    = list
  default = null
}

## Failover

variable "automatic_failover_enabled" {
  type    = bool
  default = false
}

variable "auto_minor_version_upgrade" {
  type    = bool
  default = true
}

variable "maintenance_window" {
  type    = string
  default = "fri:02:00-fri:06:00"
}

variable "snapshot_window" {
  type    = string
  default = "22:00-00:00"
}

variable "snapshot_retention_limit" {
  type    = number
  default = 5
}

variable "apply_immediately" {
  type    = bool
  default = false
}

## Encryption

variable "at_rest_encryption_enabled" {
  type    = bool
  default = true
}

variable "transit_encryption_enabled" {
  type    = bool
  default = false
}

variable "kms_key_arn" {
  type    = string
  default = null
}

## Notification
variable "notification_topic_arn" {
  type    = string
  default = null
}

## Cluster mode

variable "replicas_per_node_group" {
  type    = number
  default = 1
}

variable "num_node_groups" {
  type    = number
  default = 1
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

variable "tool" {
  description = "Automation tool info"
  default     = "Managed by Terraform"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "module" {
  type = string
}