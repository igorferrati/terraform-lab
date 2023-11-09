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

    # shape_config {
    #   memory_in_gbs = ""
    #   ocpus         = ""
    # }

    # source_details {
    #   source_type = ""
    #   source_id   = ""
    # }

    metadata = {
      ssh_authorized_keys = var.ssh_public_key
    }
}