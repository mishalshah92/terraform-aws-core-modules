# Client VPN Network Associations

This module creates the subnet association with Client VPN Endpoint.

### Development

**Terraform version**: >= `0.13`

### Example

```hcl-terraform

module "client-vpn-network-association" {
  source = "git::ssh://micustomer@bitbucket.org/customerteam/terraform-aws-modules.git//terraform/client-vpn-network-association"

  client_vpn_endpoint_id  = "cpvn-sdasdasdasd"
  subnet_id               = "subnet-dfsdfsdfadf"
  security_groups         = [
    "sg-sadasdasdasd"
  ] 
}
```

- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)
