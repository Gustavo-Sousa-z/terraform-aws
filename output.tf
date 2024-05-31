output "subnet_pub_1a" {
  value = module.eks_network.subnet_pub_1a
}
output "subnet_pub_1b" {
  value = module.eks_network.subnet_pub_1b
}
output "subnet_priv_1a" {
  value = module.eks_network.subnet_priv_1a
}
output "subnet_priv_1b" {
  value = module.eks_network.subnet_priv_1b
}
output "vpc_id_cluster_sg" {
  value = module.eks_network.vpc_id_cluster_sg
}
output "oidc" {
  value = module.cluster_eks.oidc
}
output "cluster_name_to_mng" {
  value = module.cluster_eks.cluster_name_to_mng
}