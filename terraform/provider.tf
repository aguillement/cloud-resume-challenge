terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
     version = "4.8.0"
   }
 }
}

provider "aws" {
  region  = "eu-west-1"
}

provider "aws" {
  alias   = "us_east_1"
  region  = "us-east-1"
}
