terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.0.0"
    }
  }

  required_version = ">= 1.1.7"

  cloud {
    organization = "calavia-org"
    workspaces {
      name = "s3-website"
    }
  }
}
provider "aws" {
  region = var.aws_region
}

provider "aws" {
  alias  = "acm_provider"
  region = "us-east-1"
}