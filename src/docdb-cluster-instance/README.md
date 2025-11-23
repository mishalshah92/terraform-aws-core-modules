# Document DB Cluster Instance

This module creates Document DB cluster instance.

### Development

**Terraform version**: >= `0.14`

### Example

```hcl-terraform

module "docdb-cluster-instance" {
  source = "git::https://github.com/mishalshah92/terraform-aws-modules.git//terraform/docdb-cluster-instance"

  name               = "my-cluster"
  cluster_identifier = "asdasdasd"
  instance_class     = "db.r4.large"
  promotion_tier      = 0
  
  # Backup & Maintenance
  auto_minor_version_upgrade = true
  apply_immediately = true

  preferred_maintenance_window = "07:00-09:00"

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
