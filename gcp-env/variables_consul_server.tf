variable "server_count" {}
variable "dc_net" {
  default = 32
}
variable "public_key_path" {
  description = "Path to SSH public key to be attached to cloud instances"
}
variable "gcp_image" {
  description = "GCP Image with consul installed"
}