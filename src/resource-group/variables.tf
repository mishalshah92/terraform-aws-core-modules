variable "name" {
  type = string
}

variable "type" {
  type    = string
  default = "TAG_FILTERS_1_0"
}

variable "resource_type_filters" {
  type = list
  default = [
    "AWS::AllSupported"
  ]
}

variable "tag_filters" {
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

variable "tool" {
  description = "Automation tool info"
  default     = "Managed by Terraform"
}

variable "tags" {
  type    = map(string)
  default = {}
}