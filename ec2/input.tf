variable "inst_type" {
  type    = string
  default = "t2.micro"
}

variable "name" {
    type = string
    default = "dev"
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "ami" {
  type = string
  default = "ami-0c614dee691cbbf37"
}