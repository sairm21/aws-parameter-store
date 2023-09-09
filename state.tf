terraform {
  backend "s3" {
    bucket = "terraform-remotestate-backend"
    key    = "parameters/terraform.tfstate"
    region = "us-east-1"
  }
}