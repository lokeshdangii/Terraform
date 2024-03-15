resource "aws_subnet" "subnet_public" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_subnet

  tags = {
    Name = "Subnet-Modularity"
  }
}


