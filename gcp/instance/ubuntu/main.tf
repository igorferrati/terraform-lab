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
  name         = var.name
  machine_type = var.machine_type
  zone         = var.instance_zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

#  metadata_startup_script = "echo hi > /test.txt"
}