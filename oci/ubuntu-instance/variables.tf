#provider setup
variable "tenancy_ocid" {
  type = string
  sensitive = true
}

variable "user_ocid" {
  type = string
  sensitive = true
}

variable "fingerprint" {
  type = string
  sensitive = true
}

variable "private_key_path" {
  type = string
  sensitive = true
}

variable "compartment_id" {
  type = string
  sensitive = true
}

variable "region" {
  type = string
  default = "sa-saopaulo-1"
}

#instance
variable "instance_availability_domain" {
  type = string
  default = "DCJC:SA-SAOPAULO-1-AD-1"
}

variable "instance_shape" {
  type = string
  default = "VM.Standard.E2.1.Micro"
}

variable "instance_display_name" {
  type = string
  default = "intance-ubuntu"
}

variable "ssh_public_key" {
  type = string
  sensitive = true
}

#VCN
variable "vcn_name" {
  type = string
  default = "my-first-VCN"
}

variable "cidr_block" {
  type = string
  default = "value"
}

#subrede
variable "subnet_cidr_block" {
  type = string
  default = "value"
}

variable "public_subnet_name" {
  type = string
  default = "value"
}

#security lists
variable "security_list_display_name" {
  type = string
  default = "security_list"
}