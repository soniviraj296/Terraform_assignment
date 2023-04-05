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
  access_key="AKIA227JIJAA5ACK7NUX"
  secret_key="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"
}