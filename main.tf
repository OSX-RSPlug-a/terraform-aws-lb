provider "aws" {
  region = var.region
  profile = "pessoal"
}

terraform {
  backend "s3" {
    profile = "pessoal"
    bucket  = "terraform-states"
    key     = "elb/terraform.tfstate"
    region  = var.region
  }
}