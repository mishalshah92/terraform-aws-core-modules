## IAM

resource "aws_iam_role" "master-node" {
  name               = "${var.cluster_name}-${data.aws_region.current.name}"
  assume_role_policy = data.aws_iam_policy_document.master-node-assume-policy.json
  tags = merge(local.tags, {
    Name    = "${var.cluster_name}-${data.aws_region.current.name}"
    User    = "EKS"
    Cluster = var.cluster_name
  })

  lifecycle {
    create_before_destroy = false
  }
}

resource "aws_iam_role_policy_attachment" "master-cluster-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.master-node.name
}

# Ref: https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html
resource "aws_iam_openid_connect_provider" "eks_openid" {
  url = aws_eks_cluster.master.identity[0].oidc[0].issuer

  client_id_list = [
    "sts.amazonaws.com"
  ]
  thumbprint_list = []
}