provider "aws" {
  region = "us-east-2" #specify region you want
}

#Create ec2 instance using terraform

resource "aws_instance" "state-file-instance" {
  ami = "ami-0ea3c35c5c3284d82" #specify ami id of current region
  instance_type = "t2.micro" #specify instance type you want
}

#Create s3 bucket for securing state-file using terraform

resource "aws_s3_bucket" "state-file-bucket" {
  bucket = "aws-state-file-bucket-tf" #specify a unique bucket name because s3 takes globle names

  tags = { #provide tags you want
    Name        = "My bucket"
    Environment = "Dev"
  }
}
/*
#Create dynamodb table for locking terraform lock hcl file

resource "aws_dynamodb_table" "state-file-locking-machenism" {
  name = "state-file-locking-machenism" #Specify table name 
  billing_mode = "PAY_PER_REQUEST" #Add billing mode
  hash_key = "LockID" #Specify hash key and its type

  attribute {
    name = "LockID" #Hash kay name
    type = "S" #Hash kay type string
  }

}
*/