provider "aws" {
    region = "ap-southeast-1"
}
locals {
  environment = "staging"
}
resource "aws_instance" "ec2" {
ami = "ami-0f918f7e67a3323f0"
instance_type = "t2.micro"

tags = {
  Name = "${local.environment}-ec2-instance"
}
}
