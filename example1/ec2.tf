#resource block
resource "aws_instance" "my_ec2" {
  ami =  "ami-0074ef78ecb07948c"
  instance_type = "t2.micro"
  key_name = "terraformkey"
  #security_groups = [aws_security_group.vpc-web.name]
  tags = {
    "Name" = "Ec2-Demo"
  }
}

