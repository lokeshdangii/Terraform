# Creates a public subnet tagged as "Lokesh-Subnet" within the VPC.
resource "aws_subnet" "subnet_public" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_subnet

  tags = {
    Name = "Lokesh-Subnet"
  }
}