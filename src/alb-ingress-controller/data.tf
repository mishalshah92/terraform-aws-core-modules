data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_eks_cluster" "eks" {
  name = var.cluster
}

data "aws_iam_policy_document" "alb_ingress_iam_assume_policy_document" {
  statement {

    principals {
      type = "Federated"
      identifiers = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/${local.eks_oidc}"
      ]
    }

    actions = [
      "sts:AssumeRoleWithWebIdentity"
    ]

    condition {
      test     = "StringLike"
      variable = "${local.eks_oidc}:sub"
      values = [
        "system:serviceaccount:${var.namespace}:${var.service_account_name}"
      ]
    }
  }
}

data "aws_iam_policy_document" "alb_ingress_policy_document" {
  statement {

    actions = [
      "acm:DescribeCertificate",
      "acm:ListCertificates",
      "acm:GetCertificate"
    ]

    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "ec2:AuthorizeSecurityGroupIngress",
      "ec2:CreateSecurityGroup",
      "ec2:CreateTags",
      "ec2:DeleteTags",
      "ec2:DeleteSecurityGroup",
      "ec2:DescribeAccountAttributes",
      "ec2:DescribeAddresses",
      "ec2:DescribeInstances",
      "ec2:DescribeInstanceStatus",
      "ec2:DescribeInternetGateways",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DescribeSecurityGroups",
      "ec2:DescribeSubnets",
      "ec2:DescribeTags",
      "ec2:DescribeVpcs",
      "ec2:ModifyInstanceAttribute",
      "ec2:ModifyNetworkInterfaceAttrib",
      "ec2:RevokeSecurityGroupIngress"
    ]

    resources = [
      "*",
    ]
  }

  statement {
    actions = [
      "elasticloadbalancing:AddListenerCertificates",
      "elasticloadbalancing:AddTags",
      "elasticloadbalancing:CreateListener",
      "elasticloadbalancing:CreateLoadBalancer",
      "elasticloadbalancing:CreateRule",
      "elasticloadbalancing:CreateTargetGroup",
      "elasticloadbalancing:DeleteListener",
      "elasticloadbalancing:DeleteLoadBalancer",
      "elasticloadbalancing:DeleteRule",
      "elasticloadbalancing:DeleteTargetGroup",
      "elasticloadbalancing:DeregisterTargets",
      "elasticloadbalancing:DescribeListenerCertificates",
      "elasticloadbalancing:DescribeListeners",
      "elasticloadbalancing:DescribeLoadBalancers",
      "elasticloadbalancing:DescribeLoadBalancerAttributes",
      "elasticloadbalancing:DescribeRules",
      "elasticloadbalancing:DescribeSSLPolicies",
      "elasticloadbalancing:DescribeTags",
      "elasticloadbalancing:DescribeTargetGroups",
      "elasticloadbalancing:DescribeTargetGroupAttributes",
      "elasticloadbalancing:DescribeTargetHealth",
      "elasticloadbalancing:ModifyListener",
      "elasticloadbalancing:ModifyLoadBalancerAttributes",
      "elasticloadbalancing:ModifyRule",
      "elasticloadbalancing:ModifyTargetGroup",
      "elasticloadbalancing:ModifyTargetGroupAttributes",
      "elasticloadbalancing:RegisterTargets",
      "elasticloadbalancing:RemoveListenerCertificates",
      "elasticloadbalancing:RemoveTags",
      "elasticloadbalancing:SetIpAddressType",
      "elasticloadbalancing:SetSecurityGroups",
      "elasticloadbalancing:SetSubnets",
      "elasticloadbalancing:SetWebAcl"
    ]

    resources = [
      "*",
    ]
  }

  statement {

    actions = [
      "iam:CreateServiceLinkedRole",
      "iam:GetServerCertificate",
      "iam:ListServerCertificates"
    ]

    resources = [
      "*"
    ]
  }

  statement {
    actions = [
      "cognito-idp:DescribeUserPoolClient"
    ]
    resources = [
      "*"
    ]
  }

  statement {

    actions = [
      "waf-regional:GetWebACLForResource",
      "waf-regional:GetWebACL",
      "waf-regional:AssociateWebACL",
      "waf-regional:DisassociateWebACL"
    ]

    resources = [
      "*"
    ]
  }

  statement {

    actions = [
      "tag:GetResources",
      "tag:TagResources"
    ]

    resources = [
      "*"
    ]
  }

  statement {

    actions = [
      "waf:GetWebACL"
    ]

    resources = [
      "*"
    ]
  }

  statement {

    actions = [
      "wafv2:GetWebACL",
      "wafv2:GetWebACLForResource",
      "wafv2:AssociateWebACL",
      "wafv2:DisassociateWebACL"
    ]

    resources = [
      "*"
    ]
  }

  statement {

    actions = [
      "shield:DescribeProtection",
      "shield:GetSubscriptionState",
      "shield:DeleteProtection",
      "shield:CreateProtection",
      "shield:DescribeSubscription",
      "shield:ListProtections"
    ]

    resources = [
      "*"
    ]
  }
}