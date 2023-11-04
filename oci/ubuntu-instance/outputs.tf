output "public_ip_address" {
  value = oci_core_instance.test_instance.public_ip
}

output "private_ip_address" {
  value = oci_core_instance.test_instance.private_ip
}