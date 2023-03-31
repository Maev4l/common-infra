terraform {
  backend "s3" {
    bucket         = "global-tf-states"
    region         = "eu-central-1"
    key            = "common/terraform.tfstate"
    encrypt        = "true"
    dynamodb_table = "lock-terraform-state"
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      application = "common-infra"
      owner       = "terraform"
    }
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

data "aws_availability_zones" "azs" {
}
