resource "aws_instance" "main" {
  ami           = "ami-0059b7cd9f67d8050"
  instance_type = "t2.micro"
  count         = 2
  
  tags = {
    Name = "IaC-Test"
    Env = "dev"
  }
}
