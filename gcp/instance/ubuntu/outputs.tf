output "ip" {
  value = google_compute_instance.vm-ubuntu.network_interface.0.network_ip
}
