variable "cidr_subnet" {
  description = "CIDR block for the subnet"
  default     = "10.1.0.0/24"
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

