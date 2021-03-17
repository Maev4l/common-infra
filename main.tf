terraform {
  backend "s3" {
  }
}

locals {
  tags = {
    application = "common-infra"
    owner       = "terraform"
  }
}


provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "local" {}

provider "external" {}


data "aws_iam_role" "lambda_vpc_execution_role" {
  name = "lambda-vpc-execution-role"
}
