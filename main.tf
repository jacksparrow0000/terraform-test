terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "vm-web" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "server for web"
    Env = "dev"
  }
}