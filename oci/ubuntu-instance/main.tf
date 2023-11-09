#instance
resource "oci_core_instance" "test_instance" {
    availability_domain = var.instance_availability_domain
    compartment_id = var.compartment_id
    shape = var.instance_shape
    display_name = var.instance_display_name

    create_vnic_details {
      subnet_id = oci_core_subnet.public.id
      assign_public_ip = true
    }

    source_details {
      source_id = var.image
      source_type = "image"
    }

    metadata = {
      ssh_authorized_keys = var.ssh_public_key
      user_data = "${base64encode(file("./userdata/bootstrap.sh"))}"
    }
}