module "gcp_vpc_virginia" {
  source = "git@github.com:chavo1/gcp-vpc"

  region                  = var.region_gcp
  region_zone             = var.region_zone
  project_name            = var.project_name
  remote_cidr             = var.remote_cidr
  fw_source_range         = var.fw_source_range
  subnet_range            = var.subnet_range
  source_service_accounts = var.source_service_accounts
}
