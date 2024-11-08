provider "aws" {
  region     = "us-west-2"
  access_key = "***"
  secret_key = "****"
}

resource "aws_instance" "my_Cloud_Server" {
  ami           = "ami-0b20a6f09484773af"
  instance_type = "t3.micro"

  tags = {
    Name = "my_Cloud_Server"
  }
}