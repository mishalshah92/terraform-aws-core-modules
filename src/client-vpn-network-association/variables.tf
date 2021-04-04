variable "client_vpn_endpoint_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "security_groups" {
  type    = list
  default = []
}