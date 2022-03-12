terraform {
  required_version = ">= 0.14.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
cloud {
  organization = "angad-wagh"
  workspaces {
      name = "terraform-local"
    }
  }  
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.10.0.0/16"
}