variable "vpc_id" {
  type = string
}

variable "name" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "map_public_ip_on_launch" {
  type = string
}

variable "tier" {
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

variable "kubernetes_subnet_tags" {
  type    = map(string)
  default = {}
}