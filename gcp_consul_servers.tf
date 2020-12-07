module "gcp_consul_servers" {
  source = "git@github.com:chavo1/gcp-consul"

  dc_net          = var.dc_net_gcp
  server_count    = var.server_count_gcp
  subnet-vm       = module.gcp_vpc_virginia.subnet_vm
  gcp_image       = var.gcp_image
}
