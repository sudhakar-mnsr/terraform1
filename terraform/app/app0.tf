provider aws" {
   region = ""
}

terraform {
   backend "s3" {
      bucket = "name"
      key = "aws_tf_remote_state.tfstate"
      region = "us-west-2"
   }
}


resource "aws_security_group" "security_grp" {
}
