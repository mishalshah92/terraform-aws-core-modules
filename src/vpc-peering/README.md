# AWS VPC Peering

Terraform modules create peering between VPCs.

## Development

```hcl-terraform

module "vpc-peering" {
  source = "git::https://github.com/cloudops92/terraform-aws-base-modules.git//src/vpc-peering"

  name   = "my-vpc-peering"
  vpc_id = "vpc-asdsad"

  # peering
  peer_vpc_id  = "vpc-asdsad"
  peer_region  = null     # Default null
  peer_account = null     # Default null
  auto_accept  = true     # Default false
  
  # Config
  allow_accepter_remote_vpc_dns_resolution  = true  # Default false
  allow_requester_remote_vpc_dns_resolution = false # Default false
  
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