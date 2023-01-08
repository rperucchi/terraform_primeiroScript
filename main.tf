terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYYUCTDXAN2UAYFUI"
  secret_key = "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"
}

resource "aws_s3_bucket" "my-test-bucket-perucchi" {
  bucket = "my-tf-test-bucket-140297213243243243242022"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Rafael Perucchi"
    UpdateAlt   = "2022-12-05"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}