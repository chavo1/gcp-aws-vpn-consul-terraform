module "vpn_virginia" {
  source = "git@github.com:chavo1/gcp-aws-vpn"

  vpc           = module.vpc_virginia.vpc_chavo
  region        = var.region
  subnet_range  = var.subnet_range
  remote_cidr   = var.remote_cidr
  preshared_key = var.preshared_key
}