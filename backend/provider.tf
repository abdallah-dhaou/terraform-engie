terraform {
  backend "s3" {
    bucket = "demo-engie-backend"
    key    = "app1/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  # Configuration options
}