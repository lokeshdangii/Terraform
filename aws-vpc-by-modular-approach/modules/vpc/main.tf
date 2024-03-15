resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "VPC-Modularity"
}
}

/*
output "vpc_id" {
  value = aws_vpc.vpc.id
}
*/
