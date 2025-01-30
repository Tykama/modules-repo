data "aws_ami" "AmazonLx" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.*-x86_64-gp2"]
  }
}

data "aws_vpc" "name" {
  
}