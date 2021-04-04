# EKS VPC

Terraform modules create Resource Group in AWS.

## Development

```hcl-terraform

module "vpc_nat_gateway" {
  source = "git::https://github.com/cloudops92/terraform-aws-modules.git//src/resource-group"

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