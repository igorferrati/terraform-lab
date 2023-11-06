#provider
variable "proxmox_api_url" {
  type = string
  default = "https://0.0.0.0:8006/api2/json"  # Your Proxmox IP Address
}

variable "proxmox_api_token_id" {
  type = string
  default = "value"
}

variable "proxmox_api_token_secret" {
  type = string
  default = "value"
}

#vm
variable "vm_name" {
  type = string
  default = "dev-nome.sobrenome"
}

variable "desc" {
  type = string
  default = "Ubuntu server 22.04"
}

variable "target_node" {
  type = string
  default = "value"
}

variable "iso" {
  type = string
  default = "iso-name"
}

variable "vm_iso_clone" {
  type = string
  default = "ubuntu-22.04"
}