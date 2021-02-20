provider "aws" {
   region = "us-west-2"
}

module "vpc_module" {
   source = "./modules/vpc_networking"
}
