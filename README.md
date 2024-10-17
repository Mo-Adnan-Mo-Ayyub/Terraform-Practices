# Terraform-Practices

Welcome to the Terraform Practices repository! This project serves as a collection of Terraform configurations and examples aimed at demonstrating best practices, reusable modules, and various use cases to get work done with infrastructure as code (IaC), itractions with cli, creating aws resourses using Terraform.

We can create :

1-ec2-instance

resource "aws_instance" "tf-instance" {
  ami = var.ami_value                       #var and . then ami variable name 
  instance_type = var.instance_type_value   #var and . then instance type variable name

2-s3-buckut
3-vpc (ig,subnet,sg,rt)
4-variables
5-modules
6-backend
7-statefile
8-workspaces
9-hashicorp-vault
