# variables.tf
variable "region" {
  type = map(string)

  default = {
    virginia = "us-east-1"
    ohio     = "us-east-2"
  }
}

variable "vpc_name" {
  type = list(string)
}
variable "availabilityZone" {
  type = list(string)
}

variable "instanceTenancy" {
  default = "default"
}

variable "dnsSupport" {
  default = true
}

variable "dnsHostNames" {
  default = true
}

variable "vpcCIDRblock" {
  type = list(string)
}

variable "subnetCIDRblock" {
  type = list(string)
}

variable "destinationCIDRblock" {
  default = "0.0.0.0/0"
}

variable "ingressCIDRblock" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "mapPublicIP" {
  default = true
}
