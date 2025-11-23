# AWS VPC Internet Gateway

Terraform modules create internet gateway for VPC.

## Development

```hcl-terraform

module "vpc_internet_gateway" {
  source = "git::https://github.com/mishalshah92/terraform-aws-base-modules.git//src/vpc-internet-gateway"

  name   = "db-subnet"
  vpc_id = "vpc-asda"
  tier   = "Database"
  
  # Tags
  customer       = "customer"
  env            = "learn"
  owner          = "customer"
  email          = "test@customer.ai"
  repo           = "https://github.com/mishalshah92/terraform-aws-base-modules"
  resource_group = "my-resourcegroup"
  deployment     = "default"
  module         = "test"
}

```
 
- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)