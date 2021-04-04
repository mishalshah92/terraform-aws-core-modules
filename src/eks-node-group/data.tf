data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_eks_cluster" "eks_cluster" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "eks_cluster" {
  name = var.cluster_name
}


data "aws_iam_policy_document" "worker_node_assume_policy" {

  statement {

    effect = "Allow"
    principals {
      identifiers = ["ec2.amazonaws.com"]
      type        = "Service"
    }

    actions = ["sts:AssumeRole"]
  }
}