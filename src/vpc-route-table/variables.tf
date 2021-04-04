variable "vpc_id" {
  type = string
}

variable "name" {
  type = string
}

variable "routes" {
  type    = list
  default = []
}

variable "propagating_vgws" {
  type    = list
  default = []
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