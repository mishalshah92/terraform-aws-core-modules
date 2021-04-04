resource "aws_cloudwatch_metric_alarm" "alarm" {

  alarm_name          = var.name
  comparison_operator = var.comparison_operator
  evaluation_periods  = var.evaluation_periods


  metric_name = var.metric_name
  namespace   = var.namespace
  period      = var.period
  statistic   = var.statistic
  threshold   = var.threshold

  actions_enabled     = var.actions_enabled
  alarm_actions       = var.alarm_actions_arn
  alarm_description   = var.alarm_description
  datapoints_to_alarm = var.datapoints_to_alarm

  dimensions = var.dimensions

  insufficient_data_actions = var.insufficient_data_actions_arn
  ok_actions                = var.ok_actions_arn
  unit                      = var.unit
  treat_missing_data        = var.treat_missing_data

  tags = local.tags
}