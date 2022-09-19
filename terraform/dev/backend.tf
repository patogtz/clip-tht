terraform {
  backend "s3" {
    bucket = "clip-tht-patricio-gtz"
    key    = "terraform/state"
    region = "us-east-1"
  }
}