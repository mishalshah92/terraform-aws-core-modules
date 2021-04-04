# AWS VPC Subnet

Terraform modules create subnet for VPC.

## Development

```hcl-terraform

module "subnet" {
  source = "git::https://github.com/cloudops92/terraform-aws-modules.git//src/vpc-subnet"

  name                    = "db-subnet"
  vpc_id                  = "vpc-asda"
  tier                    = "Database"
  cidr_blocks             = "10.0.30.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = false

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