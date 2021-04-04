variable "name" {
  type = string
}

variable "comparison_operator" {
  type = string
}

variable "evaluation_periods" {
  type = string
}

variable "metric_name" {
  type    = string
  default = null
}

variable "namespace" {
  type    = string
  default = null
}

variable "period" {
  type    = string
  default = null
}

variable "statistic" {
  type    = string
  default = null
}

variable "threshold" {
  type    = string
  default = null
}

variable "actions_enabled" {
  type    = bool
  default = true
}

variable "alarm_actions_arn" {
  type    = list
  default = []
}

variable "alarm_description" {
  type    = string
  default = "Created using Terraform."
}

variable "datapoints_to_alarm" {
  type    = number
  default = null
}

variable "dimensions" {
  type    = map
  default = null
}

variable "insufficient_data_actions_arn" {
  type    = list
  default = []
}

variable "ok_actions_arn" {
  type    = list
  default = []
}

variable "unit" {
  type    = string
  default = null
}

variable "treat_missing_data" {
  type    = string
  default = "breaching"
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