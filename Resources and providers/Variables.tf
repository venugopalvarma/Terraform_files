# Define the AWS provider
provider "aws" {
  region = "us-west-2"
}

# Define the AWS EC2 instance resource
resource "aws_instance" "my_Cloud_Server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.names
  }
}

# Define the variables

# AMI ID
variable "ami" {
  type    = string
  default = "ami-0eb9d67c52f5c80e5"
}

# Instance type (Note the corrected case for the variable name)
variable "instance_type" {
  type    = string
  default = "t3.micro"
}

# Name tag for the instance
variable "names" {
  type    = string
  default = "my_Cloud_Server"
}
