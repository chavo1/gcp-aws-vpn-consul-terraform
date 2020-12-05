provider "google" {
  region      = var.region_gcp
  project     = var.project_name
  credentials = file(var.credentials_file_path)
  zone        = var.region_zone
}
