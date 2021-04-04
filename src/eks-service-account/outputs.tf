output "role_name" {
  value = aws_iam_role.service_acc_role.name
}

output "role_arn" {
  value = aws_iam_role.service_acc_role.arn
}

output "policy_name" {
  value = aws_iam_policy.service_acc_policy.name
}

output "policy_arn" {
  value = aws_iam_policy.service_acc_policy.arn
}