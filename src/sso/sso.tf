resource "aws_ssoadmin_permission_set" "permission_set" {
  name             = var.permission_set_name
  description      = var.description
  instance_arn     = element(tolist(data.aws_ssoadmin_instances.sso.arns), 0)
  session_duration = var.session_duration

  tags = local.tags
}

resource "aws_ssoadmin_managed_policy_attachment" "permission_set_managed_policy" {
  for_each = toset(var.managed_policy_arns)

  managed_policy_arn = each.key
  instance_arn       = element(tolist(data.aws_ssoadmin_instances.sso.arns), 0)
  permission_set_arn = aws_ssoadmin_permission_set.permission_set.arn
}

resource "aws_ssoadmin_permission_set_inline_policy" "permission_set_inline_policy" {

  for_each = var.inline_policy == null ? [] : toset(["1"])

  inline_policy      = var.inline_policy
  instance_arn       = element(tolist(data.aws_ssoadmin_instances.sso.arns), 0)
  permission_set_arn = aws_ssoadmin_permission_set.permission_set.arn
}

resource "aws_ssoadmin_account_assignment" "group_assignment" {

  for_each = data.aws_identitystore_group.group

  instance_arn       = element(tolist(data.aws_ssoadmin_instances.sso.arns), 0)
  permission_set_arn = aws_ssoadmin_permission_set.permission_set.arn

  principal_id   = lookup(each.value, "id", null)
  principal_type = "GROUP"
  target_id      = data.aws_caller_identity.current.account_id
  target_type    = "AWS_ACCOUNT"

}

resource "aws_ssoadmin_account_assignment" "user_assignment" {

  for_each = data.aws_identitystore_user.user

  instance_arn       = element(tolist(data.aws_ssoadmin_instances.sso.arns), 0)
  permission_set_arn = aws_ssoadmin_permission_set.permission_set.arn

  principal_id   = lookup(each.value, "id", null)
  principal_type = "USER"

  target_id   = data.aws_caller_identity.current.account_id
  target_type = "AWS_ACCOUNT"

}