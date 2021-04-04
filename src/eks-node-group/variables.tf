# Cluster

variable "cluster_name" {
  type = string
}

# Node variables

variable "node_group_name" {
  type = string
}

variable "node_vpc_id" {
  type = string
}

variable "node_subnets" {
  type = list(string)
}

variable "node_labels" {
  type = map(string)
}

variable "instance_types" {
  type    = string
  default = "t3.medium"
}

variable "instance_disk_size" {
  type    = number
  default = 50
}

variable "ami_type" {
  type    = string
  default = "AL2_x86_64"
}

variable "scaling_desiered_size" {
  type    = number
  default = 1
}

variable "scaling_max_size" {
  type    = number
  default = 5
}

variable "scaling_min_size" {
  type    = number
  default = 1
}

variable "node_ssh_keypair_name" {
  type = string
}

variable "node_ssh_sg_ids" {
  type    = list
  default = []
}

# Tags

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

variable "tool" {
  description = "Automation tool info"
  default     = "Managed by Terraform"
}

variable "tags" {
  type    = map(string)
  default = {}
}