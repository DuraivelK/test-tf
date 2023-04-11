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

resource "aws_s3_bucket" "test-tf-stg-bkt" {
  bucket        = "test-tf-stg-bkt" 
  tags = {
    Name        = "test-tf-stg-bkt"
    Environment = "stage"
  }
}