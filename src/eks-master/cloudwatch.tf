resource "aws_cloudwatch_log_group" "master-cluster-cw-loggroup" {
  name              = "/aws/eks/cluster/${var.cluster_name}"
  retention_in_days = var.log_retention_in_days

  tags = merge(local.tags, {
    User    = "EKS"
    Cluster = var.cluster_name
  })
}