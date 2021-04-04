resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = data.aws_eks_cluster.eks_cluster.name
  labels          = var.node_labels
  node_group_name = var.node_group_name
  node_role_arn   = aws_iam_role.node_group_role.arn

  dynamic "remote_access" {
    for_each = var.node_ssh_sg_ids == [] ? [] : ["one_entry"]
    content {
      ec2_ssh_key               = var.node_ssh_keypair_name
      source_security_group_ids = tolist(var.node_ssh_sg_ids)
    }
  }

  subnet_ids = var.node_subnets

  scaling_config {
    desired_size = var.scaling_desiered_size
    max_size     = var.scaling_max_size
    min_size     = var.scaling_min_size
  }

  tags = local.tags

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]
}