variable "server_count_gcp" {}
variable "dc_net_gcp" {
  default = 32
}
variable "public_key_path" {
  description = "Path to SSH public key to be attached to cloud instances"
}
variable "gcp_image" {
  description = "GCP Image with consul installed"
}