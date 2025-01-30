resource "aws_instance" "test" {
  ami           = data.aws_ami.AmazonLx.id
  instance_type = var.inst_type

  tags = {
    Name      = var.name
    ManagedBy = "Tykama"
  }
}


