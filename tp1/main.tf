
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  # Configuration options
}


resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-21032022"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}