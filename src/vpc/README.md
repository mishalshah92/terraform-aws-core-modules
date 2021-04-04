# AWS VPC

Terraform modules create VPC.

## Development

```hcl-terraform

module "vpc" {
  source = "git::https://github.com/cloudops92/terraform-aws-modules.git//src/vpc"

  name                 = "my-vpc"
  cidr_range           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  # Tags
  customer       = "customer"
  env            = "learn"
  owner          = "customer"
  email          = "test@customer.ai"
  repo           = "https://github.com/cloudops92/terraform-aws-modules"
  resource_group = "my-resourcegroup"
  deployment     = "default"
  module         = "test"
}

```
 
- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)