provider "aws" {
  region = var.region
}

data "aws_caller_identity" "my_account" {}

resource "aws_s3_bucket" "my_bucket" {
   bucket = "my-s3-bucket-aabbea"
   region = var.region

   tags = {
      Type="LOG"
      Tier="STANDARD"
   }
}
