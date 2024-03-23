# This block creates an Internet Gateway (IGW) in the specified VPC.
resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  
  tags = {
    Name = "Lokesh-IGW"
  }
}

