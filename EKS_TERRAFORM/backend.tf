terraform {
  backend "s3" {
    bucket = "goway-terraform-state"
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}

