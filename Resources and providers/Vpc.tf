// Create VPC

resource "aws_vpc" "vpc_demo" {
  cidr_block = "10.10.0.0/16"
}

// Create Subnet

resource "aws_subnet" "demo_subnet" {
  vpc_id     = aws_vpc.vpc_demo.id
  cidr_block = "10.10.1.0/24"

  tags = {
    Name = "Demo_Subnet"
  }
}

// Create internet gateway

resource "aws_internet_gateway" "demo_igw" {
  vpc_id = aws_vpc.vpc_demo.id

  tags = {
    Name = "Internet_Gateway"
  }
}

// Create route table

resource "aws_route_table" "demo_rt" {
  vpc_id = aws_vpc.vpc_demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo_igw.id
  }

  tags = {
    Name = "Route_Table"
  }
}

// Create subnet associate 

resource "aws_route_table_association" "demo-rt_associateion" {
  subnet_id      = aws_subnet.demo_subnet.id
  route_table_id = aws_route_table.demo_rt.id

}

// Create secutity group

resource "aws_security_group" "demo-vpc-sg" {
  name        = "ademo-vpc-sg"
  vpc_id      = aws_vpc.vpc_demo.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}
  tags = {
    Name = "allow_tls"
  }
}
// Create Incident 

provider "aws" {
  region     = "us-west-2"
  access_key = "***"
  secret_key = "****"
}

resource "aws_instance" "my_Cloud_Server" {
  ami           = "ami-0eb9d67c52f5c80e5"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.demo_subnet.id
  vpc_security_group_ids = [aws_security_group.demo-vpc-sg.id]

  tags = {
    Name = "my_Cloud_Server"
  }
}