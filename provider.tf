terraform {

  backend "s3" {
  }



  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.28.0"
    }


    tls = {
      source  = "hashicorp/tls"
      version = "4.1.0"
    }
  }
}

provider "aws" {
  region = var.region
}

provider "tls" {
  # Configuration options
}

