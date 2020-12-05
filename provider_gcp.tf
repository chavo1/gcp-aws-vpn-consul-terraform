variable "gcp_credentials" {}

provider "google" {
  region      = var.region_gcp
  project     = var.project_name
  credentials = var.gcp_credentials
  zone        = var.region_zone
}