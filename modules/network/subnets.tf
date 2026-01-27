############private
resource "aws_subnet" "priv_1a" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = local.subnet_cidr_priv_1a
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = false

  tags = merge({
    Name                              = "subnet private 1a"
    "kubernetes.io/role/internal-elb" = "1"
  }, var.tags)
}


resource "aws_subnet" "priv_1b" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = local.subnet_cidr_priv_1b
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = false

  tags = merge({
    Name                              = "subnet private 1b"
    "kubernetes.io/role/internal-elb" = "1"
  }, var.tags)
}

############public

resource "aws_subnet" "public_1a" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = local.subnet_cidr_public_1a
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = merge({
    Name                     = "subnet public 1a"
    "kubernetes.io/role/elb" = "1"
  }, var.tags)
}


resource "aws_subnet" "public_1b" {
  vpc_id                  = aws_vpc.vpc_eks.id
  cidr_block              = local.subnet_cidr_public_1b
  availability_zone       = "${var.region}b"
  map_public_ip_on_launch = true

  tags = merge({
    Name                     = "subnet public 1b"
    "kubernetes.io/role/elb" = "1"
  }, var.tags)
}