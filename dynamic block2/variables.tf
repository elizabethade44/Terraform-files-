
#Input Variables
#AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-west-1"
}

#AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"
}

#AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS EC2 key Pair that need to be associated with EC2 Instance"
  type = string
  default = "terraformkey"
}
#AWS EC2 Instance Type -list
variable "instance_type_list" {
  description = "EC2 Instance Type"
  type = list(string)
  default = ["t2.micro", "t2.medium", "t2.large"]
}

#AWS EC2 Instance Type - MAP
variable "instance_type_map" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa" = "t.small"
    "prod" = "t3.large"
  }

}
      
}
