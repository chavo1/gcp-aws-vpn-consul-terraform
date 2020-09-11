terraform {
  required_version = "~> 0.13.0"
}

provider "aws" {
  region = var.region["virginia"]
}