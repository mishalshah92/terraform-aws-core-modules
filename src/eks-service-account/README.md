# EKS Service Account

This module is creating the IAM role that can use with Kubernetes service account.
Attach that service account with pod to get the aws service access.

### Development

**Terraform version**: >= `0.12`

### Example

```hcl-terraform

provider "aws" {
  region = "us-west-2"
}

terraform {
  required_version = ">= 0.12.0"
}

data "aws_iam_policy_document" "dynamic_demand_frontend_service_account" {
  statement {

    actions = [
      "s3:Get*",
      "s3:List*"
    ]

    resources = [
      "*",
    ]
  }
}

module "eks" {
  source = "git::https://github.com/pro-works/terraform-ec2-service-module.git//terraform/aws/eks_service_account"

  cluster = "aicustomer-apps"
  namespace            = "customer-kube"
  service_account_name = "dynamic-demand-frontend"
  iam_policy_json      = data.aws_iam_policy_document.dynamic_demand_frontend_service_account.json
 
  # Tags
  email = "mishal.shah@customer.ai"
  owner = "mishal"
}
```

For more info on variables, check [here](variables.tf)
