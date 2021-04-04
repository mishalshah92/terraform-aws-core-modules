resource "aws_iam_policy" "service_acc_policy" {
  name   = local.name_prefix
  path   = "/"
  policy = var.iam_policy_json
}

resource "aws_iam_role" "service_acc_role" {
  name               = local.name_prefix
  assume_role_policy = data.aws_iam_policy_document.service_acc_iam_assume_policy_document.json
  tags               = local.tags
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  role       = aws_iam_role.service_acc_role.name
  policy_arn = aws_iam_policy.service_acc_policy.arn
}