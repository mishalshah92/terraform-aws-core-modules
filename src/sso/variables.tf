# Permission set

variable "permission_set_name" {
  type = string
}

variable "description" {
  type    = string
  default = "This permission-set is managed from Terraform."
}

variable "session_duration" {
  type    = string
  default = "PT2H"
}

variable "managed_policy_arns" {
  type    = list(any)
  default = null
}

variable "inline_policy" {
  type    = string
  default = null
}

variable "groups" {
  type    = list
  default = []
}

variable "users" {
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

variable "deployment" {
  type = string
}

variable "module" {
  type = string
}

variable "resource_group" {
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