variable "name" {
  type = string
}

variable "cluster_identifier" {
  type = string
}

variable "engine" {
  type    = string
  default = "docdb"
}

variable "instance_class" {
  type = string
}

variable "promotion_tier" {
  type    = number
  default = 0
}

# Maintenance

variable "apply_immediately" {
  type    = bool
  default = false
}

variable "auto_minor_version_upgrade" {
  type    = bool
  default = true
}

# backup

variable "preferred_maintenance_window" {
  type = string
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