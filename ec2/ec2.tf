resource "aws_instance" "test" {
  ami           = var.ami
  instance_type = var.inst_type

  tags = {
    Name      = var.name
    ManagedBy = "Tykama"
  }
}

provider "aws" {
  region = var.region
}
