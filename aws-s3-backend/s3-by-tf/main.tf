# Configure the AWS Provider
provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "myawsbucket-for-terraform-remote-state3"
    key    = "terraform_remote.tfstate"
    region = "ap-south-1"
  }
}

/*
# creating EC2 Instance
resource "aws_instance" "ec2_instance" {
  ami           = var.image_id
  instance_type = var.instance_type

  tags = {
    Name = "EC2-by-Terraform"
  }
}
*/

# creating s3 bucket
resource "aws_s3_bucket" "demo-s3-bucket" {
  bucket = "myawsbucket-for-terraform-remote-state2"

  tags = {
    Name        = "My bucket For remote state file"
    Environment = "Demo"
  }
}
