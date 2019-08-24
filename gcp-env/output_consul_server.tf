output "public_ip" {
  value = "${module.consul_servers.public_ip}"
}
output "private_ip" {
  value = "${module.consul_servers.private_ip}"
}