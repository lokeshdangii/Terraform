# Create AWS VPC in eu-central-1
# CIDR - 10.0.0.0/16
resource "aws_vpc" "vpc_by_terraform" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "Terraform-VPC"
  }
}
