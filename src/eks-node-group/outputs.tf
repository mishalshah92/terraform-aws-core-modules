output "node_group_id" {
  value = aws_eks_node_group.eks_node_group.id
}

//output "node_sg_id" {
//  value = aws_security_group.node_security_group.id
//}
//
//output "node_sg_name" {
//  value = aws_security_group.node_security_group.name
//}