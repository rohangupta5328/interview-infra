variable "access_key" {
}

variable "secret_key" {
}

variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID of the AMI to provision. Default is AWS Base Image"
  default     = "ami-00eb20669e0990cb4"
}

variable "instance_type" {
  description = "type of EC2 instance to provision."
  default     = "t2.large"
}

variable "name" {
  description = "name to pass to Name tag"
  default     = "blackbelt-interview"
}

variable "aws_key" {}


variable "tag" {

  description = "tag for the department"
  default     = "blackbelt-interview"
}


