locals {
  region = "us-east-1"
}


resource "aws_cloudformation_stack" "vpc" {
  name          = "vpc"
  template_body = file("./vpc.yaml")
}

resource "aws_cloudformation_stack" "ec2" {
  name          = "ec2"
  template_body = file("./ec2.yaml")
  depends_on    = [aws_cloudformation_stack.vpc]
}
