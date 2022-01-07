#terraform block
terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
}

  #provider block
provider "aws" {
  region  = "us-west-1"
}

module "ec2module" {
    source = "./ec2"
    ec2name = "Name From Module"
}

output "module_output" {
    value = module.ec2module.instance_id
}