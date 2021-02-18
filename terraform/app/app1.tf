data "terraform_remote_state" "iam" { 
    backend = "s3" 
    config { 
        bucket = "packt-terraform" 
        key = iam/terraform.tfstate 
        region = eu-central-1 
    } 
} 

data "terraform_remote_state" "vpc" { 
  backend = "s3" 
  config { 
    bucket = "packt-terraform" 
    key = "vpc/terraform.tfstate" 
    region = "eu-central-1" 
  } 
}

module "mighty_trousers" { 
  source = "./modules/application" 
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}" 
  subnets = [             "${data.terraform_remote_state.vpc.public-subnet-1-id}",             "${data.terraform_remote_state.vpc.public-subnet-2-id}"            ]   # .. 
  iam_role = "${data.terraform_remote_state.iam.base-role-name}" 
} 
