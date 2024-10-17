provider "aws" {
  region = "us-east-2"
}

provider "vault" {
  address = "http://18.119.1.97:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "11337e72-305f-77ac-6456-7d7eeba1d794"
      secret_id = "dad7603c-ee1f-35ff-ef6f-742c4673d230"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv" 
  name  = "secret-aws-terraform" 
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0ea3c35c5c3284d82"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}