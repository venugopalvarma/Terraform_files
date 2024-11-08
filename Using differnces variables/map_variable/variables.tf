variable "region_amis" {
  type = map(string)
  default = {
    us-west-2 = "ami-0eb9d67c52f5c80e5"
    us-west-2 = "ami-05134c8ef96964280"
    eu-west-2 = "ami-03810a047e048bc14"
  }
}

