# Client VPN Network Associations

This module creates the authorization rule with Client VPN Endpoint.

### Development

**Terraform version**: >= `0.13`

### Example

```hcl-terraform

module "client-vpn-authorization-rule" {
  source = "git::https://github.com/cloudops92/terraform-aws-modules.git//terraform/client-vpn-authorization-rule"

  client_vpn_endpoint_id  = "cpvn-sdasdasdasd"
  target_network_cidr     = "10.0.0.0/16"
}
```

- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)
