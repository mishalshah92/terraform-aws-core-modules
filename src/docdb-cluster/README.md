# Document DB Cluster

This module creates Document DB cluster.

### Development

**Terraform version**: >= `0.14`

### Example

```hcl-terraform

module "docdb-cluster" {
  source = "git::https://github.com/mishalshah92/terraform-aws-core-modules.git//terraform/docdb-cluster"

  name                = "my-cluster"
  engine              = "docdb"
  engine_version      = "1.2"
  port                = 3389
  deletion_protection = true

  preferred_backup_window = "07:00-09:00"

  master_username = "foo"
  master_password = "mustbeeightchars"

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
