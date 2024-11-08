#Using multiple variables

resource "aws_instance" "LINUX_SERVE" {
  ami           = var.ami[0]
  instance_type = var.instance_type[0] 

  tags = {
    Name = var.names[0]
  }
}

resource "aws_instance" "UBANTU_SERVER" {
  ami           = var.ami[1]
  instance_type = var.instance_type[1] 

  tags = {
    Name = var.names[1]
  }
}

resource "aws_instance" "WINDOWS_SERVER" {
  ami           = var.ami[2]
  instance_type = var.instance_type[2] 

  tags = {
    Name = var.names[2]
  }
}