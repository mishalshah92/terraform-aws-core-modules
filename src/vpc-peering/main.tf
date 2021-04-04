terraform {
  required_version = ">0.13"
}

locals {
  default_tags = {
    Customer      = var.customer
    Owner         = var.owner
    Env           = var.env
    Email         = var.email
    Deployment    = var.deployment
    Repo          = var.repo
    Tool          = var.tool
    ResourceGroup = var.resource_group
    Module        = var.module
  }

  extra_tags = {
    Name = var.name
  }

  tags = merge(local.default_tags, local.extra_tags, var.tags, var.kubernetes_vpc_tags)
}