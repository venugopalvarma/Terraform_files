//This a first file to write DSF language

provider "aws" {
  region     = "us-west-2"
  access_key = "***"
  secret_key = "****"
}

resource "aws_instance" "my_Cloud_Server" {
  ami           = "ami-0eb9d67c52f5c80e5"
  instance_type = "t3.micro"

  tags = {
    Name = "my_Cloud_Server"
  }
}
