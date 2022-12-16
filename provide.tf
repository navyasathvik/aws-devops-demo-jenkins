# Terraform AWS provider
terraform {
  required_version = ">= 1.0.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
      
  


    }
  }
}
provider "aws" {
  region  = "us-east-1"
  aws_access_key_id ="AKIA5RGHZUKSZ32ZZVUF"
  aws_secret_access_key ="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"



}
