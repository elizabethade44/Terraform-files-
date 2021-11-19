variable "aws_region"{
  type = string
  default = "us-west-1"
}

variable "my_ami"{
  type = string
  default = "ami-0074ef78ecb07948c"
}

variable "my_instance_type"{
  type = string
  default = "t2.micro"
}

variable "my_key"{
  type = string
  default = "terraformkey"
}

#data = data.aws_ami.amzlinux2.id