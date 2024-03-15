resource "aws_internet_gateway" "igw_by_terraform" {
  vpc_id = aws_vpc.vpc_by_terraform.id

  tags = {
    Name = "Terraform-IGW for Public Subnet"
  }
}
