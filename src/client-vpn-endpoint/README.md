# Client VPN Endpoint

This module generates create the client VPN endpoint.

### Development

**Terraform version**: >= `0.13`

### Example

```hcl-terraform

module "vpn-server-certificate" {
  source = "git::https://github.com/mishalshah92/terraform-aws-modules.git//terraform/acm"

  dns           = "customer"
  route_53_zone = "aws.test.com"

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


module "client-vpn-endpoint" {
  source = "git::https://github.com/mishalshah92/terraform-aws-base-modules.git//src/client-vpn-endpoint"

  name        = var.name
  description = "The VPN endpoint for VPC ${var.customer}."

  auth_type              = var.auth_type
  auth_saml_provider_arn = var.auth_saml_provider_arn

  client_cidr_block = var.client_cidr_block
  dns_servers       = var.dns_servers == [] ? [data.aws_vpc.vpn_vpc.cidr_block] : var.dns_servers

  log_enabled   = var.log_enabled
  log_retention = var.log_retention

  server_certificate_arn = module.vpn-server-certificate.acm_cert_arn
  split_tunnel           = var.split_tunnel

  customer       = "customer"
  env            = "learn"
  owner          = "customer"
  email          = "test@customer.ai"
  repo           = "https://github.com/mishalshah92/terraform-aws-base-modules"
  resource_group = "my-resourcegroup"
  deployment     = "default"
}
```

- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)
