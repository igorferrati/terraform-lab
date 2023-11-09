#provider setup
variable "tenancy_ocid" {
  type = string
  sensitive = true
  default = ""
}

variable "user_ocid" {
  type = string
  sensitive = true
  default = ""
}

variable "fingerprint" {
  type = string
  sensitive = true
  default = ""
}

variable "private_key_path" {
  type = string
  sensitive = true
  default = ""
}

variable "compartment_id" {
  type = string
  sensitive = true
  default = ""
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

variable "image" {
  type = string
  default = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaapdrvirn5xutenmq3mqho4vcvfc65hmgphxuwehjw3bfm7ggd5dva"
}

variable "instance_display_name" {
  type = string
  default = "intance-ubuntu"
}

variable "ssh_public_key" {
  type = string
  sensitive = true
  default = ""
}

#VCN
variable "vcn_name" {
  type = string
  default = "my-first-VCN"
}

variable "cidr_block" {
  type = string
  default = "10.0.0.0/24"
}

#subrede
variable "subnet_cidr_block" {
  type = string
  default = "10.0.0.0/24"
}

variable "public_subnet_name" {
  type = string
  default = "subnet-public"
}

#security lists
variable "security_list_display_name" {
  type = string
  default = "security_list"
}