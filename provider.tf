provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "sushilbucketfortraining"
    key ="dev/statefile"
    region = "us-east-2"
  }
}