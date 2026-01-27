locals {
  #########private
  subnet_cidr_priv_1a = cidrsubnet("${var.vpc_cidr}", 8, 0)
  subnet_cidr_priv_1b = cidrsubnet("${var.vpc_cidr}", 8, 1)

  ########## public
  subnet_cidr_public_1a = cidrsubnet("${var.vpc_cidr}", 8, 2)
  subnet_cidr_public_1b = cidrsubnet("${var.vpc_cidr}", 8, 3)
}