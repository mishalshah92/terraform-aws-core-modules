terraform {
  required_version = ">0.13"
}

locals {
  default_tags = {
    Name          = var.name
    Customer      = var.customer
    Owner         = var.owner
    Env           = var.env
    Email         = var.email
    Deployment    = var.deployment
    Module        = var.module
    Repo          = var.repo
    Tool          = var.tool
    ResourceGroup = var.resource_group
  }

  tags = merge(local.default_tags, var.tags)
}