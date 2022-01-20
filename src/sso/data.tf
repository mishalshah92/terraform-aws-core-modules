data "aws_caller_identity" "current" {}

data "aws_ssoadmin_instances" "sso" {}

data "aws_identitystore_group" "group" {
  for_each = toset(var.groups)

  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "DisplayName"
    attribute_value = each.key
  }
}

data "aws_identitystore_user" "user" {
  for_each = toset(var.users)

  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  filter {
    attribute_path  = "UserName"
    attribute_value = each.key
  }
}
