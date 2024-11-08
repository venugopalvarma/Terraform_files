resource "aws_instance" "my_Cloud_Server" {
  ami           = var.AMI_Type
  instance_type = var.Size

  tags = {
    Name = "my_Cloud_Server"
  }
}

resource "aws_s3_bucket" "bucketname" {
  bucket = var.bucket_name

}