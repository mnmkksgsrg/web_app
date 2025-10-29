terraform {
  required_version = ">=1.9.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 6.18.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"

  default_tags {
    tags = {
      project = "web_app"
      Owner   = "mutsuki"
    }
  }
}




