output "kubeconfig" {
  value = data.template_file.kubeconfig.rendered
}

output "eks_command" {
  value = local.eks_command
}

output "master_iam_role" {
  value = aws_iam_role.master-node.id
}

output "cluster_sg_id" {
  value = aws_eks_cluster.master.vpc_config.*.cluster_security_group_id
}

output "cluter_version" {
  value = aws_eks_cluster.master.version
}

output "cluster_endpoint" {
  value = aws_eks_cluster.master.endpoint
}

output "cluster_id" {
  value = aws_eks_cluster.master.id
}

output "openid_arn" {
  value = aws_iam_openid_connect_provider.eks_openid.arn
}