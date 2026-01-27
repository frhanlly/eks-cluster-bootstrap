resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.vpc_eks.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_igw.id
  }


  tags = merge({
    Name = "RTB for public subnets"
  }, var.tags)
}

resource "aws_route_table_association" "rtc_public_association_1a" {
  subnet_id      = aws_subnet.public_1a.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rtc_public_association_1b" {
  subnet_id      = aws_subnet.public_1b.id
  route_table_id = aws_route_table.rtb_public.id
}