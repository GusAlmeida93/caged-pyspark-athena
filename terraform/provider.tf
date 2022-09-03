terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3"{
    bucket = "caged-pyspark-athena-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "caged-pyspark-athena-tfstate"
    profile = "datasouls"

  }
}

provider "aws" {
  region  = var.region
  profile = var.profile
}