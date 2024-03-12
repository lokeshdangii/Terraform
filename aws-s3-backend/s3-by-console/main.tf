# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "myawsbucket-for-terraform-remote-state"
    key    = "myDir/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "ec2_instance" {
  ami           = var.image_id
  instance_type = var.instance_type

  tags = {
    Name = "EC2-by-Terraform"
  }
}
