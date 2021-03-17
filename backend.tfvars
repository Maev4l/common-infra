bucket = "global-tf-states"

region = "eu-central-1"

key = "common/terraform.tfstate"

encrypt = "true"

dynamodb_table = "lock-terraform-state"