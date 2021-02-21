provider "aws" {
   region = "aws"
}

resource "aws_instance" "ec2_instance" {
   ami = "ami-1234abcd"
   instance_type = "t2.micro"
   key_name = data.aws_instance.ec2_data.key_name

   tags {
      Name="aaabbb"
   }
}

data "aws_instance" "ec2_data" {
   instance_id = "333iii"
}

data "aws_vpc" "default_vpc" {
   cidr_block = "10.0.0.0/16"
}
