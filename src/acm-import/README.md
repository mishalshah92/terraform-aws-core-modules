# ACM Import

This module import your existing cert to ACM service..

### Development

**Terraform version**: >= `1.0`

### Example

```hcl-terraform

module "acm_import" {
  source = "git::https://github.com/mishalshah92/terraform-aws-modules.git//src/acm-import"

  private_key       = "your_private_key"
  certificate_body  = "your_certificate_body"
  certificate_chain = "your_certificate_chain"

  # Tags
  tags = {
    customer       = "customer"
    env            = "learn"
  }
}

```

- **Variables**: For info on variables, check [file](variables.tf)
- **Outputs**: For info on outputs, check [file](outputs.tf)
