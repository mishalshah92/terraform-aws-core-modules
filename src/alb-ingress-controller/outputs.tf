output "role_name" {
  value = aws_iam_role.alb_ingress_role.name
}

output "role_arn" {
  value = aws_iam_role.alb_ingress_role.arn
}

output "policy_name" {
  value = aws_iam_policy.alb_ingress_policy.name
}

output "policy_arn" {
  value = aws_iam_policy.alb_ingress_policy.arn
}