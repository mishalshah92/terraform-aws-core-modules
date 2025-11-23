# AWS KMS Key Generator

Terraform modules create kms keys.

## Development

```hcl-terraform

module "kms-key-generator" {
  source = "git::https://github.com/mishalshah92/terraform-aws-core-modules.git//terraform/kms-key-generator"

  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "This key is for RDS."
  deletion_window_in_days  = 7
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"

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