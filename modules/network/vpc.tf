resource "aws_vpc" "vpc_eks" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    {
      Name = "VPC for eks project"
  }, var.tags)
}