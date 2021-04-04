# AWS Redis Elasticache

Terraform modules deploys Redis Elasticache.

## Development

```hcl-terraform

module "redis-elasticache" {
  source = "git::https://github.com/cloudops92/terraform-aws-base-modules.git//src/redis-elasticache"

  name        = "my-redis"
  description = "my redis cluster"

  # Redis config
  redis_version = "6.x"
  redis_port    = 6379

  # Configurations
  subnet_group_name    = "default.sad"
  parameter_group_name = "default.sadasd"

  # Node config
  node_type             = "cache.r6g.large"
  number_cache_clusters = 1

  # Networking
  availability_zones         = ["us-east-1a", "us-east-1b"]
  redis_security_group_names = ["sg-asdasdsadas"]
  security_group_ids         = ["sg-sdasdas"]

  # Backup and maintenance
  snapshot_name            = "my-resourcegroup/my-redis/snapshot"
  snapshot_window          = "02:00-06:00"
  snapshot_retention_limit = 10 # Days
  maintenance_window       = "FRI:02:00-FRI:06:00"
  apply_immediately        = false

  # Notification
  notification_topic_arn = null

  # Encryption
  at_rest_encryption_enabled = true
  transit_encryption_enabled = true
  kms_key_arn                = "asdasdas"


  # Cluster Mode
  replicas_per_node_group = 1
  num_node_groups         = 1

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