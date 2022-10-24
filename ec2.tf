resource "aws_instance" "main" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = "t2.micro"
  count         = 3
  
  tags = {
    Name = "IaC-Test"
    Env = "dev"
  }
}
