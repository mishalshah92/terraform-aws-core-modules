variable "dns" {
  type = string
}

variable "route_53_zone" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}