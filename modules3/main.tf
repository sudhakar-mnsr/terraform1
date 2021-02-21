provider "aws" {
   region = "us-west-2"
}

module "vpc_module" {
   source = "./modules/vpc_networking"
   vpc_cidr_block = var.vpc_cidr_block
   public_subnet_cidr_block = var.public_subnet_cidr_block
   private_subnet_cidr_block= var.private_subnet_cidr_block
}
