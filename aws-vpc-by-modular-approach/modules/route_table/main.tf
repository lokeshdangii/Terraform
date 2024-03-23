# Creates a Route Table associated with the specified VPC
resource "aws_route_table" "rtb_public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }

  tags = {
    Name = "Lokesh-RT"
  }
}

# Associates the created Route Table with the designated public subnet
resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.rtb_public.id
}