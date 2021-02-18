terraform {
  backend "s3" {
    bucket = "packt-terraform"
    key = "vpc/terraform.tfstate"
    region = "eu-central-1"
  }
}

