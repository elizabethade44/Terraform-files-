  #EC2 Instance
source "aws_instance" "myec2" {
  ami = data.aws_ami.amzlinux2.id
  #instance_type = var.my_instance_type
  instance_type = var.instance_type_list[1] #For List
  #instance_type = var/instance_type_map[prod] #For Map
  user_data = file("${path.module}/app1-install.sh")
  key_name =var.instance.keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count = 1
  tags = {
    "Name" = "EC2 Demo 2"
  }
}