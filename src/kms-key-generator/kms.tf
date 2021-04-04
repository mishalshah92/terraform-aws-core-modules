resource "aws_kms_key" "kms_key" {
  customer_master_key_spec = var.customer_master_key_spec
  description              = var.description #"This key is for RDS ${var.name}"
  deletion_window_in_days  = var.deletion_window_in_days
  enable_key_rotation      = var.enable_key_rotation
  is_enabled               = var.is_enabled
  key_usage                = var.key_usage
  tags                     = local.tags
  policy                   = var.policy
}