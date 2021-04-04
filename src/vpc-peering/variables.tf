variable "name" {
  type = string
}

variable "peer_vpc_id" {
  type = string
}

variable "peer_account" {
  type    = string
  default = null
}

variable "peer_region" {
  type    = string
  default = null
}

variable "vpc_id" {
  type = string
}

variable "auto_accept" {
  type    = bool
  default = false
}

variable "allow_accepter_remote_vpc_dns_resolution" {
  type    = bool
  default = false
}

variable "allow_requester_remote_vpc_dns_resolution" {
  type    = bool
  default = false
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