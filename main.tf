provider "aws" {
	region = "us-west-2"
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc25"
    Environment = "dev"
  }
}
resource "aws_instance" "myec2" {
    ami = "ami-09889d8d54f9e0a0e"
    instance_type = "t2.micro"
    tags = {
    Name = "dbServer"
    Envrionment = "stage"
  }
}
resource "aws_s3_bucket" "mys3" {
  bucket = "bosedevops"
  acl    = "private"

  tags = {
    Name        = "Mys3bucket"
    Environment = "Dev"
  }
}