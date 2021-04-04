data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_eks_cluster" "eks" {
  name = var.cluster
}

data "aws_iam_policy_document" "service_acc_iam_assume_policy_document" {
  statement {

    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]

    principals {
      type = "Federated"
      identifiers = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/${local.eks_oidc}"
      ]
    }

    condition {
      test     = "StringEquals"
      variable = "${local.eks_oidc}:sub"
      values = [
        "system:serviceaccount:${var.namespace}:${var.service_account_name}"
      ]
    }
  }
}