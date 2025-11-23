# AWS VPC Route Table

Terraform modules create route-table for VPC. Route table will get associated with subnet based on tier.

## Development

```hcl-terraform

module "route_table" {
  source = "git::https://github.com/mishalshah92/terraform-aws-base-modules.git//src/vpc-route-table"

  name   = "db-route-table"
  vpc_id = "vpc-asda"
  tier   = "Database"
  
  routes = [
    {
      cidr_block : "10.0.30.0/24",
      nat_gateway_id : "nat-fsdfds"
    }
  ]

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