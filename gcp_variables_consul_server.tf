variable "server_count_gcp" {}
variable "dc_net_gcp" {
  default = 32
}

variable "gcp_image" {
  description = "GCP Image with consul installed"
}
