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
  region = "us-west-2"
}



resource "aws_lightsail_instance" "mt4-lounis-lightsail_instance" {
  name              = "mt4-lounis-lightsail_instance"
  availability_zone = "us-west-2a"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"

  tags = {
    Name = "Lightsail Instance"
  }
}

resource "aws_s3_bucket" "mt4-lounis-bucket" {
  bucket = "mt4-lounis-hetic"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
