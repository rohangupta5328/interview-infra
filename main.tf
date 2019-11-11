provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "interview-tf-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}


resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.aws_key
  count         = 1
  iam_instance_profile= "harness_delegate_rohan"
  tags = {
    Department  = "harnessbb"
  }
}

