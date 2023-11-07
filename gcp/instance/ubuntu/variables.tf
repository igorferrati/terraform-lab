# Provider
variable "gcp_project" {
  type = string
  default = "project-id"
}

variable "gcp_region" {
  type = string
  default = "us-central1"
}

variable "gcp_zone" {
  type = string
  default = "us-central1-a"
}

# Instance
variable "name" {
  type = string
  default = "ubuntu-setup"
}

variable "machine_type" {
  type = string
  default = "e2-standard-2"
}

variable "instance_zone" {
  type = string
  default = "us-central1-a"
}

variable "image" {
  type = string
  default = "ubuntu-2004-focal-v20230907"
}