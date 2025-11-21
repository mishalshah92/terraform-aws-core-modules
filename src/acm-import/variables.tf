variable "private_key" {
  type = string
}

variable "certificate_body" {
  type = string
}

variable "certificate_chain" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}