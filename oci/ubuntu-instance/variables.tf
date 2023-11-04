#provider setup
variable "tenancy_ocid" {
  type = string
  default = "ocid1.tenancy.oc1..xxxxxxxxxxxxxxxx"
}

variable "user_ocid" {
  type = string
  default = "ocid1.user.oc1..xxxxxxxxxxxxxxxx"
}

variable "private_key_path" {
  type = string
  default = "/home/igor/projects/terraform-lab/oci/oci-keys/igorferrati@gmail.com_2023-11-03T13_12_43.596Z.pem"
}

variable "fingerprint" {
  type = string
  default = "b7:0f:1b:e1:0a:a4xxxxxxxxxxxxx"
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

variable "compartment_id" {
  type = string
  default = "ocid1.compartment.oc1..xxxxxxxxxxxxxxxxx"
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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAxxxxxxxxxxxxxxxxxxx"
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
