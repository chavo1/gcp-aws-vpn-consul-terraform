resource "google_compute_address" "vpn-gw-ip" {
  name   = "vpn-gw-ip"
  region = var.region_gcp
}