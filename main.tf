terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
  backend "s3" {
    bucket = "terraform-labs-state"
    key    = "prd/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  profile = "terraform"
}