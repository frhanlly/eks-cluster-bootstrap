###zone 1A
resource "aws_eip" "zone_a" {
  domain = "vpc"
}

resource "aws_nat_gateway" "zone_a" {
  allocation_id = aws_eip.zone_a.id
  subnet_id     = aws_subnet.public_1a.id

  tags = merge({
    Name = "ngw public for zone A"
  }, )

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.eks_igw]
}


###zone 1B
resource "aws_eip" "zone_b" {
  domain = "vpc"
}

resource "aws_nat_gateway" "zone_b" {
  allocation_id = aws_eip.zone_b.id
  subnet_id     = aws_subnet.public_1b.id

  tags = merge({
    Name = "ngw public for zone B"
  }, )

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.eks_igw]
}
