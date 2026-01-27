resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.vpc_eks.id

  tags = merge({
    Name = "internet gateway for eks vpc"
  }, var.tags)
}