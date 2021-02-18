terraform {
  backend "s3" {
    bucket = "packt-terraform"
    key = "iam/terraform.tfstate"
    region = "eu-central-1"
  }
}

