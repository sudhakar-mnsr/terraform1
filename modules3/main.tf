provider "aws" {
   region = "us-west-2"
}

module "vpc_module" {
   source = "./modules/vpc_networking"
   vpc_cidr_block = "10.0.0.0/16"
   public_subnet_cidr_block = "10.0.4.0/24"
   private_subnet_cidr_block = "10.0.3.0/24"
}
