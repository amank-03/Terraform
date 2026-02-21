terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}

provider "aws" {
  region = "me-central-1"
  # Configuration options
}


resource random_id "bucket_id" {
  byte_length = 4
}




resource "aws_s3_bucket" "ml-project-bucket" {
  bucket = "ml-project-bucket-${random_id.bucket_id.hex}"

  tags = {
    Name        = "Aman-ML-Project-Bucket"
    Environment = "Dev"
  }
}