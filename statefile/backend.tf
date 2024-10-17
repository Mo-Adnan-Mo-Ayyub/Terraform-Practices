terraform {
  backend "s3" {
    bucket = "aws-state-file-bucket-tf"
    key    = "statefile/terraform.tfstate"
    region = "us-east-2"
    #dynamodb_table = "state-file-locking-machenism"
  }
}
