terraform {
  required_version = "~> 0.14.0"
}

provider "aws" {
  region = var.region["virginia"]
}