variable "server_count" {
  type = map(string)

  default = {}
}

variable "dcname" {
  type = map(string)

  default = {}
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_ohio" {
  type = map(string)

  default = {}
}

variable "ami_virginia" {
  type = map(string)

  default = {}
}

variable "consul_version" {}

variable "key_name" {}

variable "dc_net" {
  type = map(string)

  default = {
    dc1 = "16"
    dc2 = "32"
  }
}

variable "create" {
  description = "Create Module, defaults to true."
  default     = true
}

variable "name" {
  description = "Name for resources, defaults to \"consul-auto-join-instance-role-aws\"."
  default     = "consul-auto-join-aws"
}
