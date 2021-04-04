variable "client_vpn_endpoint_id" {
  type = string
}

variable "target_network_cidr" {
  type = string
}

variable "description" {
  type    = string
  default = "Allowing traffic."
}