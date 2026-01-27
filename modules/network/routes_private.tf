#### AZ 1

resource "aws_route_table" "rtb_private_1a" {
  vpc_id = aws_vpc.vpc_eks.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.zone_a.id
  }


  tags = merge({
    Name = "RTB for private 1a"
  }, var.tags)
}

resource "aws_route_table_association" "rtc_private_association_1a" {
  subnet_id      = aws_subnet.priv_1a.id
  route_table_id = aws_route_table.rtb_private_1a.id
}

#### AZ 2

resource "aws_route_table" "rtb_private_1b" {
  vpc_id = aws_vpc.vpc_eks.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.zone_b.id
  }


  tags = merge({
    Name = "RTB for private 1b"
  }, var.tags)
}

resource "aws_route_table_association" "rtc_private_association_1b" {
  subnet_id      = aws_subnet.priv_1b.id
  route_table_id = aws_route_table.rtb_private_1b.id
}