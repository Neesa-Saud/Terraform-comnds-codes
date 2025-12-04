terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws" #aws provider
            version = "~> 4.0"
        }
    }
}

#Define the provider
provider "aws" {
    region = "us-east-1"
}