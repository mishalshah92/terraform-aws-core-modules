variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = "This client VPN is crated using Terraform."
}

# Authentication

variable "auth_type" {
  type = string
}

variable "auth_root_certificate_chain_arn" {
  type    = string
  default = ""
}

variable "auth_saml_provider_arn" {
  type    = string
  default = ""
}

variable "auth_active_directory_id" {
  type    = string
  default = ""
}

# Logging

variable "log_retention" {
  type    = number
  default = 30
}

# Other

variable "client_cidr_block" {
  type = string
}

variable "dns_servers" {
  type    = list
  default = []
}

variable "server_certificate_arn" {
  type = string
}

variable "split_tunnel" {
  type    = bool
  default = false
}

variable "transport_protocol" {
  type    = string
  default = "udp"
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