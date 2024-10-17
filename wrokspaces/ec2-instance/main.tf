provider "aws" {
  region = "us-east-2"
}

variable "ami-value" {
  description = "ami id for same region"
}

variable "instance_type" {
  description = "instance type t2.micro"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.xlarge"
  }
}
resource "aws_instance" "workspace-instance" {
  ami = var.ami-value
  instance_type = lookup(var.instance_type, terraform.workspace, "t2.micro")
}