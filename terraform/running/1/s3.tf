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

resource "aws_s3_bucket_object" "readme_file" {
   bucket = aws_s3_bucket.my_bucket.bucket
   key = "files/readme.txt"

   source = "readme.txt"
}
