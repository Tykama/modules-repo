resource "aws_instance" "test" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = var.inst_type

  tags = {
    Name      = var.name
    ManagedBy = "Tykama"
  }
}

provider "aws" {
  region = var.region
}
