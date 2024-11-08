resource "aws_instance" "map_Creation_server" {
  # Selects the AMI based on the region
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
  }
}


