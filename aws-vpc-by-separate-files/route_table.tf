resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc_by_terraform.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_by_terraform.id
  }
  tags = {
    Name = "RT Public "
  }
}

resource "aws_route_table" "private_route_table" {
  count      = length(var.cidr_private_subnet)
  vpc_id     = aws_vpc.vpc_by_terraform.id
  depends_on = [aws_nat_gateway.ngw_by_terraform]
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw_by_terraform[count.index].id
  }
  tags = {
    Name = "RT Private "
  }
}
