provider "google" {
  region      = var.region_gcp
  project     = var.project_name
  credentials = var.credentials
  zone        = var.region_zone
}

variable "credentials" {}