# AWS VPC Peering

Terraform modules create peering between VPCs.

## Development

```hcl-terraform

module "rds-postgresql" {
  source = "git::https://github.com/cloudops92/terraform-aws-base-modules.git//src/rds-postgresql"

  name = "my-db"

  # General
  instance_class = "db.t2.micro"
  iops           = "1000"

  # Database
  engine_version       = "5.7"
  db_name              = "helloworld"
  parameter_group_name = "posgesqkl-db-group"
  username             = "admin"
  password             = "admin"

  # Network
  vpc_security_group_ids = [ "sg-asdsad" ]
  db_subnet_group_name   = "d-asdasd"
  multi_az               = true
  publicly_accessible    = false

  # Updates
  allow_major_version_upgrade = false
  apply_immediately           = false
  auto_minor_version_upgrade  = true

  # Backup
  backup_retention_period   = 5
  backup_window_range_utc   = "Mon:05:00-Mon:07:00"
  delete_automated_backups  = false
  skip_final_snapshot       = false

  # Others
  copy_tags_to_snapshot = true
  deletion_protection   = true
  maintenance_window    = "Mon:00:00-Mon:03:00"

  # Storage
  allocated_storage     = 20
  max_allocated_storage = 50
  storage_type          = "gp2"

  # Monitoring
  monitoring_interval = 0
  monitoring_role_arn = null

  # Logging
  enabled_cloudwatch_logs_exports = ["postgresql"]
  
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