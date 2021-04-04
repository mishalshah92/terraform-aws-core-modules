terraform {
  # The latest version of Terragrunt (v0.19.0 and above) requires Terraform 0.12.0 or above.
  required_version = "> 0.13"
}

locals {

  default_tags = {
    Name          = var.name
    Customer      = var.customer
    Env           = var.env
    Service       = var.name
    Owner         = var.owner
    Email         = var.email
    ResourceGroup = var.resource_group
    Repo          = var.repo
    Module        = var.module
    Deployment    = var.deployment
    Tool          = var.tool
  }

  tags = merge(local.default_tags, var.tags)
}

