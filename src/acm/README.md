# ACM

This module generates the SSL cert with the verifications.

### Development

**Terraform version**: >= `0.13`

### Example

```hcl-terraform

provider "aws" {
  region = "us-west-2"
}

terraform {
  required_version = ">= 0.12.0"
}

module "dns_register" {
  source = "git::https://github.com/cloudops92/terraform-aws-base-modules.git//src/acm"

  dns           = "customer-kube"
  route_53_zone = "aws.test.com"
  
  # Tags
  customer       = "customer"
  env            = "learn"
  owner          = "customer"
  email          = "test@customer.ai"
  repo           = "https://github.com/cloudops92/terraform-aws-base-modules"
  resource_group = "my-resourcegroup"
  deployment     = "default"
  module         = "test"
}
```

- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)
