provider "aws" {
  region = var.region
}

data "aws_caller_identity" "my_account" {}

resource "aws_s3_bucket" "my_bucket" {
   bucket = "my-s3-bucket-aabbea"
   region = var.region

   versioning {
      enabled = true
   }

   lifecycle_rule {
      prefix = "files/"
      enabled = true

      noncurrent_version_transition {
        days = 30
        storage_class = "STANDARD_IA"
      }
   }

   tags = {
      Type="LOG"
      Tier="STANDARD"
   }
}

resource "aws_s3_bucket_object" "readme_file" {
   bucket = aws_s3_bucket.my_bucket.bucket
   key = "files/readme.txt"

   source = "readme.txt"
   etag = filemd5("readme.txt")
}
