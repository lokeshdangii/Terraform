variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
  default     = "ami-03bb6d83c60fc5f7c"
}

variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

