variable "server_count" {
  default = 2
}
variable "dc_net" {
  default = 48
}
variable "public_key_path" {
  description = "Path to SSH public key to be attached to cloud instances"
}