# Creates an AWS VPC with the specified CIDR block and tagged as "Lokesh-VPC".
resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_vpc
  tags = {
    Name = "Lokesh-VPC"
}
}