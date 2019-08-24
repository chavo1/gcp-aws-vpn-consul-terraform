module "consul_servers" {
  source = "git@github.com:chavo1/gcp-consul"

  dc_net          = var.dc_net
  public_key_path = var.public_key_path
  server_count    = var.server_count
  subnet-vm       = module.vpc_virginia.subnet_vm
  gcp_image       = var.gcp_image
}