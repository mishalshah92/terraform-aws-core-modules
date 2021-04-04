//resource "aws_security_group" "node_security_group" {
//  name        = "${var.node_group_name}-eks-node-group"
//  description = "Security group for all nodes in the cluster"
//  vpc_id      = var.node_vpc_id
//
//  egress {
//    from_port = 0
//    to_port   = 0
//    protocol  = "-1"
//    cidr_blocks = [
//    "0.0.0.0/0"]
//  }
//
//  tags = merge(local.tags, {
//    Name                                                             = "${var.node_group_name}-eks-node-group"
//    "kubernetes.io/cluster/${data.aws_eks_cluster.eks_cluster.name}" = "owned"
//  })
//}
//
//resource "aws_security_group_rule" "node_security_group_ingress_self" {
//  description              = "Allow node to communicate with each other"
//  from_port                = 0
//  protocol                 = "-1"
//  security_group_id        = aws_security_group.node_security_group.id
//  source_security_group_id = aws_security_group.node_security_group.id
//  to_port                  = 65535
//  type                     = "ingress"
//}
//
//# Node <- Master rules
//
//resource "aws_security_group_rule" "node_security_group_ingress_10250" {
//  description              = "Allow cluster control plane (master) traffic to node."
//  from_port                = 10250
//  protocol                 = "tcp"
//  security_group_id        = aws_security_group.node_security_group.id
//  source_security_group_id = data.aws_eks_cluster.eks_cluster.vpc_config.0.cluster_security_group_id
//  to_port                  = 10250
//  type                     = "ingress"
//}
//
//resource "aws_security_group_rule" "node_security_group_ingress_1025_65535" {
//  description              = "Allow cluster control plane (master) traffic to node."
//  from_port                = 1025
//  protocol                 = "tcp"
//  security_group_id        = aws_security_group.node_security_group.id
//  source_security_group_id = data.aws_eks_cluster.eks_cluster.vpc_config.0.cluster_security_group_id
//  to_port                  = 65535
//  type                     = "ingress"
//}
//
//resource "aws_security_group_rule" "node_security_group_ingress_cluster_https_443" {
//  description              = "Allow cluster control plane (master) traffic to node."
//  from_port                = 443
//  protocol                 = "tcp"
//  security_group_id        = data.aws_eks_cluster.eks_cluster.vpc_config.0.cluster_security_group_id
//  source_security_group_id = aws_security_group.node_security_group.id
//  to_port                  = 443
//  type                     = "ingress"
//}
//
//# Master -> Node rules
//
//resource "aws_security_group_rule" "master_cluster_ingress_node_https" {
//  description              = "Allow pods to communicate with the cluster API Server"
//  from_port                = 443
//  protocol                 = "tcp"
//  to_port                  = 443
//  security_group_id        = aws_security_group.node_security_group.id
//  source_security_group_id = data.aws_eks_cluster.eks_cluster.vpc_config.0.cluster_security_group_id
//  type                     = "ingress"
//}