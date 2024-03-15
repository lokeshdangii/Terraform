# Setting Up Public Subnet

resource "aws_subnet" "terraform_public_subnets" {
  count             = length(var.cidr_public_subnet)
  vpc_id            = aws_vpc.vpc_by_terraform.id
  cidr_block        = element(var.cidr_public_subnet, count.index)
  availability_zone = element(var.availability_zone, count.index)

  tags = {
    Name = "Terrafom Public Subnet"
  }
}

# Setting Up Private Subnet

resource "aws_subnet" "terraform_private_subnets" {
  count             = length(var.cidr_private_subnet)
  vpc_id            = aws_vpc.vpc_by_terraform.id
  cidr_block        = element(var.cidr_private_subnet, count.index)
  availability_zone = element(var.availability_zone, count.index)

  tags = {
    Name = "Terrafom Private Subnet"
  }
}
