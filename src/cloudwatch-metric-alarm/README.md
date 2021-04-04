# Cloudwatch Metric Alarm

This module creates Cloudwatch metric alarm.

### Development

**Terraform version**: >= `0.14`

### Example

```hcl-terraform

module "cloudwatch-metric-alarm" {
  source = "git::ssh://micustomer@bitbucket.org/customerteam/terraform-aws-modules.git//terraform/cloudwatch-metric-alarm"

  name          = "${local.cloudwatch_alarm_name_prefix}/FreeableMemory"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "FreeableMemory"
  namespace           = "AWS/RDS"
  period              = "60"
  statistic           = "Average"
  threshold           = "90"

  dimensions = {
    DBInstanceIdentifier = module.postgresql.id
  }

  alarm_description   = "Database server freeable memory"
  alarm_actions             = local.alarm_actions_arn
  ok_actions                = var.ok_actions_arn
  insufficient_data_actions = var.insufficient_data_actions
  tags                      = local.tags

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
