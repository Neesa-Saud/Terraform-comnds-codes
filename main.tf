terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" #aws provider
      version = "~> 4.0"
    }
  }
}

#Define the provider
provider "aws" {
  region = "us-east-1"
}
#Define vpc
resource "aws_vpc" "nisha_vpc" {
  cidr_block = "10.0.0/16"
  tags = {
    Name = "aws_nisha_vpc"
  }
}

