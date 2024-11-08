//This a first file to write DSF language

provider "aws" {
  region     = "us-east-1"
  access_key = "****************************"
  secret_key = "****************************"
}

terraform {
  backend "s3" {
    bucket = "sample-terraform-s3-bucket"
    key = "sample-terraform-s3-bucket/sample-terraform-projectA"
    region = "us-east-1"
    access_key = "****************************"
    secret_key = "****************************"
    
  }
}

resource "aws_instance" "my_Cloud_Server" {
  ami           = "***********************"
  instance_type = "t3.micro"

  tags = {
    Name = "sample_s3_version"
  }
}
