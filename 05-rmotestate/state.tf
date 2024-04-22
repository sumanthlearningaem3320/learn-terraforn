terraform {
  backend "s3" {
    bucket = "terraformstate476"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}