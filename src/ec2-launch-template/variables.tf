# General

variable "name" {
  description = "Name of the instance."
  type        = string
}

variable "description" {
  description = "Description of the deployment."
  type        = string
  default     = "Generated using Terraform"
}

# Network

variable "vpc_subnet_id" {
  description = "Subnet id."
  type        = string
}


# Launch Template

variable "ec2_keypair_name" {
  description = "Name of the ec2 key-pair. This will allow you to access your service instance. Default: null"
  type        = string
  default     = null
}

variable "ec2_iam_instance_profile_name" {
  description = "IAM role instance profile name. Default: null"
  type        = string
  default     = null
}

variable "ec2_ami_id" {
  description = "AMI id that will use to host the EC2 machine."
  type        = string
}

variable "ec2_instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "ec2_instance_root_volume_size" {
  description = "Root volume size in GB of EC2 machine. Default: 35"
  type        = number
  default     = 35
}

variable "ec2_public" {
  description = "Define instance is public or private. Default: false"
  type        = bool
  default     = false
}

variable "ec2_security_group_ids" {
  description = "List of security group ids. Default: null"
  type        = list(string)
  default     = null
}

variable "ec2_init_config_base64_encode" {
  description = "Userdata Init script in base64 encode format. Default: null"
  type        = string
  default     = null
}

variable "ec2_instance_shutdown_behavior" {
  description = "Instance shutdown behavior. Default: null"
  type        = string
  default     = "stop"
}

variable "ec2_disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection. Default: true"
  type        = bool
  default     = true
}

# Tags

variable "customer" {
  type = string
}

variable "env" {
  type = string
}

variable "resource_group" {
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

variable "module" {
  type = string
}

variable "deployment" {
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