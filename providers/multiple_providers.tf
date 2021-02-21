provider "aws" {
   region = "us-west-2"
}

provider "aws" {
   alias = "aws.virginia"
   region = "us-east-1"
}

resource "aws_s3_bucket" "virginia_bucket" {
   provider = "aws.aws.virginia"
   bucket = ""
}

resource "aws_s3_bucket" "default_bucket" {
   bucket = ""
}
