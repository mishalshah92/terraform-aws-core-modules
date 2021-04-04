resource "aws_iam_instance_profile" "ec2_instance_profile" {
  role = aws_iam_role.ec2_instance_role.id
}

resource "aws_iam_role" "ec2_instance_role" {
  assume_role_policy = data.aws_iam_policy_document.ec2_instance_role_assume_policy.json
  tags               = local.tags
}

resource "aws_iam_policy" "ec2_instance_role_policy" {
  policy = var.ec2_iam_policy_json
}

resource "aws_iam_role_policy_attachment" "ec2_role_policy_attachment" {
  role       = aws_iam_role.ec2_instance_role.name
  policy_arn = aws_iam_policy.ec2_instance_role_policy.arn
}