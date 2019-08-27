module "gcp_vpn_virginia" {
  source = "git@github.com:chavo1/gcp-aws-vpn-common"

  vpc             = module.gcp_vpc_virginia.vpc_chavo
  region          = var.region_gcp
  subnet_range    = var.subnet_range
  remote_cidr     = var.remote_cidr
  preshared_key   = var.preshared_key
  vpn_gw_ip       = google_compute_address.vpn-gw-ip.address
  tunnel1_address = module.vpn_virginia.vpn_connection_tunnel1_address
  tunnel2_address = module.vpn_virginia.vpn_connection_tunnel2_address
}