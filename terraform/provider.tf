provider "aws" {
  region  = "eu-west-1"
}

provider "aws" {
  profile = "default"
  alias   = "us_east_1"
  region  = "us-east-1"
}