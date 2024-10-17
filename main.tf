provider "aws" {
  region = "us-east-2"
}

variable "ami-value" {
  description = "ami id for same region"
}

variable "instance_type" {
  description = "instance type t2.micro"
}

module "workspace-module" {
  source = "./workspace/ec2-instance"
  ami = var.ami_value
  instance_type = var.instance_type
}