# https://docs.aws.amazon.com/eks/latest/userguide/alb-ingress.html

resource "aws_iam_policy" "alb_ingress_policy" {
  name   = local.name_prefix
  path   = "/"
  policy = data.aws_iam_policy_document.alb_ingress_policy_document.json
}

resource "aws_iam_role" "alb_ingress_role" {
  name               = local.name_prefix
  assume_role_policy = data.aws_iam_policy_document.alb_ingress_iam_assume_policy_document.json

  tags = local.tags
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment" {
  role       = aws_iam_role.alb_ingress_role.name
  policy_arn = aws_iam_policy.alb_ingress_policy.arn
}