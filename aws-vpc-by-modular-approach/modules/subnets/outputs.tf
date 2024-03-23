output "subnet_id" {
  value       = aws_subnet.subnet_public.id
  description = "Outputs the ID of the created subnet."
}

