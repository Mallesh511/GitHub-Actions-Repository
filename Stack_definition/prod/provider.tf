# configure aws provider
provider "aws" {
  region  = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "github-workflow-terraform"
    key            = "prod/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "terraform-state-lock-dynamodb"
  }
}