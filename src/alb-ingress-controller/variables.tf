variable "cluster" {
  type = string
  description = "Name of the cluster"
}

variable "namespace" {
  type    = string
  default = "kube-system"
}

variable "service_account_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}