# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "web" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"

  tags = {
    Name = "My_Instance"
  }
}
