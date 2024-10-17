provider "aws" {
  region = "us-east-2"
} 

module "ec2_instance" {
  source = "./module/ec2-instance"
  ami_value = "ami-0ea3c35c5c3284d82"
  instance_type_value = "t2.micro"
}