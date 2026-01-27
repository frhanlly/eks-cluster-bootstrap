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

}

output "eks_cluster" {
  value = module.eks.eks_cluster
}

output "oidc" {
  value = module.eks.oidc
}