terraform {
  required_version = ">0.13"
}

locals {
  eks_command = "aws eks --region ${data.aws_region.current.name} update-kubeconfig --name ${var.cluster_name}"

  default_tags = {
    Customer = var.customer
    Owner    = var.owner
    Env      = var.env
    Email    = var.email
    Repo     = var.repo
    Tool     = var.tool
  }

  tags = merge(local.default_tags, var.tags)
}

resource "local_file" "kubeconfig" {
  content  = data.template_file.kubeconfig.rendered
  filename = "kubeconfig.yaml"
}