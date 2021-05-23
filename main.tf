terraform {
  backend "s3" {
    bucket         = "global-tf-states"
    region         = "eu-central-1"
    key            = "common/terraform.tfstate"
    encrypt        = "true"
    dynamodb_table = "lock-terraform-state"
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

  default_tags {
    tags = local.tags
  }
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
