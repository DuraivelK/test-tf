terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

}

provider "aws" {
  region            = "us-east-1"
}

resource "aws_s3_bucket" "test-tf-dev-bkt" {
  bucket        = "test-tf-dev-bkt" 
  tags = {
    Name        = "test-tf-dev-bkt"
    Environment = "dev"
  }
}