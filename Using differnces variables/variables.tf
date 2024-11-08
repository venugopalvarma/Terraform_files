# Define the variables

# AMI ID
variable "ami" {
  type    = list(string)
  default = ["ami-0eb9d67c52f5c80e5","ami-05134c8ef96964280","ami-03810a047e048bc14"]
}

# Instance type (Note the corrected case for the variable name)

variable "instance_type" {
  type    = list(string)
  default = ["t3.micro","t3.micro","t3.micro"]
}

# Name tag for the instance

variable "names" {
  type    = list(string)
  default = ["This is linux server","This is ubantu server","This is windows server"]
}