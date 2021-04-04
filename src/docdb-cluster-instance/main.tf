terraform {
  required_version = ">0.14"
}

locals {

  default_tags = {
    Name          = var.name
    Customer      = var.customer
    Owner         = var.owner
    Env           = var.env
    Email         = var.email
    Repo          = var.repo
    Tool          = var.tool
    Deployment    = var.deployment
    ResourceGroup = var.resource_group
    Module        = var.module
  }

  tags = merge(local.default_tags, var.tags)
}