#VCN
resource "oci_core_vcn" "rede-estudo" {
    compartment_id = var.compartment_id
    display_name   = var.vcn_name
    cidr_block     = var.cidr_block
}

#subrede
resource "oci_core_subnet" "public" {
    cidr_block = var.subnet_cidr_block
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.rede-estudo.id
    display_name = var.public_subnet_name
    freeform_tags = {"Subnet"= "Public"}
    security_list_ids = [oci_core_vcn.rede-estudo.default_security_list_id]
    route_table_id = oci_core_vcn.rede-estudo.default_route_table_id
    dhcp_options_id = oci_core_vcn.rede-estudo.default_dhcp_options_id
}

#internet gateway
resource "oci_core_internet_gateway" "test_internet_gateway" {
    compartment_id = var.compartment_id
    display_name   = "TestInternetGateway"
    vcn_id         = oci_core_vcn.rede-estudo.id
}

#route table
resource "oci_core_default_route_table" "default_route_table" {
    manage_default_resource_id = oci_core_vcn.rede-estudo.default_route_table_id
    display_name = "default-route-table"

    route_rules {
        destination       = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
        network_entity_id = oci_core_internet_gateway.test_internet_gateway.id
        }
}

#instance
resource "oci_core_instance" "test_instance" {
    availability_domain = var.instance_availability_domain
    compartment_id = var.compartment_id
    shape = var.instance_shape
    display_name = var.instance_display_name

    metadata = {
    ssh_authorized_keys = var.ssh_public_key
    }

    create_vnic_details {
      subnet_id = oci_core_subnet.public.id
      assign_public_ip = true
    }
}