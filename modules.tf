module "eks_network" {
  source     = "./modules/network"
  cidr_block = var.cidr_block
  tags       = local.tags
}

module "cluster_eks" {
  source           = "./modules/Cluster"
  tags             = local.tags
  public_subnet_1a = module.eks_network.subnet_pub_1a
  public_subnet_1b = module.eks_network.subnet_pub_1b
  vpc_cluster_id   = module.eks_network.vpc_id_cluster_sg
}

module "eks_nodes" {
  source            = "./modules/managed-node-group"
  tags              = local.tags
  private_subnet_1a = module.eks_network.subnet_priv_1a
  private_subnet_1b = module.eks_network.subnet_priv_1b
  cluster_name      = module.cluster_eks.cluster_name_to_mng
} 