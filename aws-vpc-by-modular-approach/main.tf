# Provider configuration for AWS cloud.
provider "aws" {
  region = var.region
}

# Module for creating a Virtual Private Cloud (VPC).
module "vpc" {
  source = "./modules/vpc" # Path to the VPC module.
}

# Module for creating Subnets within the VPC. 
module "subnets" {
  source = "./modules/subnets" # Path to the Subnets module.
  vpc_id = module.vpc.vpc_id
}

# Module for creating an Internet Gateway for the VPC.
module "internet_gateway" {
  source = "./modules/internet_gateway" # Path to the Internet Gateway module.
  vpc_id = module.vpc.vpc_id
}

# Module for creating a Route Table associated with the VPC.
module "route_table" {
  source    = "./modules/route_table" # Path to the Route Table module.
  vpc_id    = module.vpc.vpc_id
  igw_id    = module.internet_gateway.igw_id
  subnet_id = module.subnets.subnet_id
}

# Module for creating a Security Group within the VPC.
module "security_group" {
  source = "./modules/security_group" # Path to the Security Group module.
  vpc_id = module.vpc.vpc_id
}