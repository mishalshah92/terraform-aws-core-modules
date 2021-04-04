variable "customer_master_key_spec" {
  type    = string
  default = "SYMMETRIC_DEFAULT"
}

variable "deletion_window_in_days" {
  type    = number
  default = 7
}

variable "key_usage" {
  type    = string
  default = "ENCRYPT_DECRYPT"
}

variable "is_enabled" {
  type    = bool
  default = true
}

variable "enable_key_rotation" {
  type    = bool
  default = false
}

variable "description" {
  type    = string
  default = "This key was generated using Terraform. For more info please check tags."
}

variable "policy" {
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