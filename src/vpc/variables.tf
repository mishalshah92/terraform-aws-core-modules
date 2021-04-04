variable "name" {
  type = string
}

variable "cidr_range" {
  type = string
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

# Flow logs

variable "flow_log_retention" {
  type    = number
  default = 30
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

variable "kubernetes_vpc_tags" {
  type    = map(string)
  default = {}
}