# general

variable "cluster" {
  description = "Name of the cluster"
}

variable "namespace" {
  type    = string
  default = "kube-system"
}

variable "service_account_name" {
  type = string
}


# tags
variable "owner" {
  type = string
}

variable "email" {
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