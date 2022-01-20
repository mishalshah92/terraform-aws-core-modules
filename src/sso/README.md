# AWS SSO

This module that creates the permission-sets for AWS SSO service and assign the AWS account and user to it. 

### Development

**Terraform version**: > `0.13`

### Example

```hcl-terraform

provider "aws" {
  region = "us-west-2"
}

terraform {
  required_version = "> 0.13.0"
}

module "sso" {
  source = "git::https://github.com/cloudops92/terraform-aws-modules.git//terraform/sso"

  permission_set_name = "AdministratorAccess"
  managed_policy_arns = ["arn:aws:iam::aws:policy/AlexaForBusinessDeviceSetup"]
  inline_policy       = null

  # Tags
  customer       = "samya"
  env            = "learn"
  owner          = "samya"
  email          = "test@samya.ai"
  repo           = "https://github.com/cloudops92/terraform-aws-modules"
  resource_group = "my-resourcegroup"
  deployment     = "default"
  module         = "test"
}
```

For more info on variables, check [here](variables.tf)
