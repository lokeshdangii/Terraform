resource "aws_nat_gateway" "ngw_by_terraform" {
  count         = length(var.cidr_private_subnet)
  depends_on    = [aws_eip.eip_by_terraform]
  allocation_id = aws_eip.eip_by_terraform[count.index].id
  subnet_id     = aws_subnet.terraform_private_subnets[count.index].id

  tags = {
    Name = "NAT Gatewat for Private Subnet"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.igw_by_terraform]
}
