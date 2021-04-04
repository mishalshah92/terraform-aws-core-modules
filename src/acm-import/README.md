# ACM Import

This module import your existing cert to ACM service..

### Development

**Terraform version**: >= `0.13`

### Example

```hcl-terraform

module "acm_import" {
  source = "git::https://github.com/cloudops92/terraform-aws-base-modules.git//src/acm-import"

  name              = "my.dns.com"
  private_key       = "your_private_key"
  certificate_body  = "your_certificate_body"
  certificate_chain = "your_certificate_chain"

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
