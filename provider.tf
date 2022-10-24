provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
  bucket = "dev-terraform-state-gks"
  key = "dev/ec2-app2/terraform.tfstate"
  region = "us-east-1"
  }
}
