output "subnet_vm" {
  value       = "${module.vpc_virginia.subnet_vm}"
  description = "The URL of the created resource"
}
