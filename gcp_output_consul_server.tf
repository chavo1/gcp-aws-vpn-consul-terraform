output "public_ip" {
  value = "${module.gcp_consul_servers.public_ip}"
}
output "private_ip" {
  value = "${module.gcp_consul_servers.private_ip}"
}