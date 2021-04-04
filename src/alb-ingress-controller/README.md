# ACM Register

This module generates the SSL cert with the verifications.

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

module "aws_app_ingress_controller" {
  source = "git::https://github.com/pro-works/terraform-ec2-service-module.git//terraform/aws/alb_ingress_controller"

  cluster = "aicustomer-apps"
  namespace = "kube-system"
  service_account_name = "alb-app-ingress-controller"

  # Tags
  email = "mishal.shah@customer.ai"
  owner = "mishal"
}
```

For more info on variables, check [here](variables.tf)
