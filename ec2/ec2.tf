resource "aws_instance" "test" {
  ami           = "ami-0c614dee691cbbf37"
  instance_type = var.inst_type
  monitoring = true
  ebs_optimized = true

  root_block_device {
    encrypted     = true
  }

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  tags = {
    Name      = var.name
    ManagedBy = "Tykama"
  }
}

provider "aws" {
  region = var.region
}
