resource "aws_eip" "eip_by_terraform" {
  count = length(var.cidr_private_subnet)
  vpc   = true
}
