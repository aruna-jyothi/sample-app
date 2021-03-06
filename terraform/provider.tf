provider "aws" {
  region  = var.region
  profile = var.profile
}

terraform {
  backend "s3" {
    bucket         = "tsureshbab-123"
    key            = "sample-app2"
    region         = "us-east-1"
    dynamodb_table = "terraform_locks"
  }
}
