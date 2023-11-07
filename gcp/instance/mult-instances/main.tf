locals {
  vms = {
    instance01 = {
      machine_type = var.instance_type
      instance_zone    = var.instance_zone01
    }
    instance02 = {
      machine_type = var.instance_type
      instance_zone    = var.instance_zone02
    }
    # instance03 = {
    #   machine_type = var.instance_type
    #   instance_zone    = var.instance_zone03
    # }
    # instance04 = {
    #   machine_type = var.instance_type
    #   instance_zone    = var.instance_zone04
    # }

  }
}

resource "google_compute_firewall" "web" {
  name = "web-access"
  network = "default"

  allow {
    protocol = "tcp"
    ports = ["80", "443", "3306"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "vm-ubuntu" {
  for_each = local.vms

  name         = each.key
  machine_type = each.value.machine_type
  zone = each.value.instance_zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}

