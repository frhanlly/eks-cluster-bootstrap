module "network" {
  source   = "./modules/network"
  vpc_cidr = var.vpc_cidr
  tags     = local.tags
  region   = var.region

}



module "eks" {
  source             = "./modules/eks"
  id_public_subnet_1 = module.network.id_subnet_pub1
  id_public_subnet_2 = module.network.id_subnet_pub2
  tags               = local.tags
  project_name       = var.project_name


  depends_on = [module.network]
}

module "mng" {
  source       = "./modules/mng"
  tags         = local.tags
  project_name = var.project_name

  policy_cni  = var.policy_cni
  ecr_policy  = var.ecr_policy
  node_policy = var.node_policy

  id_private_subnet_1 = module.network.id_subnet_private1
  id_private_subnet_2 = module.network.id_subnet_private2

  depends_on = [module.network, module.eks]

  cluster_name      = module.eks.cluster_name
  disk_size         = var.disk_size
  ec2_instance_type = var.ec2_instance_type
}



output "eks_cluster" {
  value = module.eks.eks_cluster
}

output "oidc" {
  value = module.eks.oidc
}