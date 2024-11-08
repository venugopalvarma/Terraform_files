resource "aws_instance" "my_Cloud_Server" {
  ami           = "ami-0b20a6f09484773af"
  instance_type = "t3.micro"

  tags = {
    Name = "my_Cloud_Server"
  }
}