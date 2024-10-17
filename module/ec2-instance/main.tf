resource "aws_instance" "tf-instance" {
  ami = var.ami_value                       #var and . then ami variable name 
  instance_type = var.instance_type_value   #var and . then instance type variable name
  #key_name = var.key_pair                   #var and . then key pair name
}