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

module "db" {
    source = "./db"
}

module "web" {
    source = "./web"
}

output "PrivateIP" {
    value = module.db.PrivateIP
}

output "PublicIP" {
    value = module.web.pub_ip
}