variable "AMI_Type" {
 type = string
 default = "ami-0b20a6f09484773af"
 description = "This is my AMI ID"
}

variable "Size" {
    type = string
    default = "t3.micro"
    description = "This is the size of instance"
}

variable "bucket_name" {
  
}