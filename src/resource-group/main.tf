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
    Repo          = var.repo
    Tool          = var.tool
    ResourceGroup = var.name
    Module        = var.module
  }

  tags = merge(local.default_tags, var.tags)
}