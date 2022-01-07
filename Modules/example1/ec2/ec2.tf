variable "ec2name" {
  type = string
 
}

resource "aws_instance" "ec2" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = "t2.micro"
    tags = {
    Name = var.ec2name
     
    }
}
output "instance_id" {
     value = aws_instance.ec2.id
}