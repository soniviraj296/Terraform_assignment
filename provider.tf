terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key="AKIA227JIJAA6F5XINPB"
  secret_key="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"
}