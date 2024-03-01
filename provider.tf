provider "aws" {
  region     = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "mcmgithubactionstfstate"
    key = "global/s3/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "mcmgithubactions-state-locking"
    encrypt = true
    
  }
}