terraform {
  required_version = "> 0.12"
}

locals {
  name_prefix = "${var.service_account_name}_${var.namespace}_${var.cluster}_${data.aws_region.current.id}"

  eks_oidc = replace(data.aws_eks_cluster.eks.identity[0].oidc[0].issuer, "https://", "")
  default_tags = {
    Cluster   = var.cluster
    Namespace = var.namespace
    Owner     = var.owner
    Email     = var.email
    Tool      = var.tool
  }

  tags = merge(local.default_tags, var.tags)
}