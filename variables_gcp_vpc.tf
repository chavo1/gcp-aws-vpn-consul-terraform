variable "region_gcp" {
  default = "us-east4"
}
variable "region_zone" {
  default = "us-east4-a"
}
variable "project_name" {}
variable "credentials_file_path" {}
variable "source_service_accounts" {
  description = "GCE service account"
}
variable "remote_cidr" {
  description = "remote cidr ranges"
  default     = "172.31.16.0/22"
}
variable "fw_source_range" {
  default = "172.31.16.0/22"
}
variable "subnet_range" {
  default = "172.31.32.0/22"
}
