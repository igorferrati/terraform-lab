#VCN
resource "oci_core_vcn" "rede-estudo" {
    compartment_id = var.compartment_id
    display_name   = var.vcn_name
    cidr_block     = var.cidr_block
    # dns_label = "rede_estudo"
}

#subnet
resource "oci_core_subnet" "public" {
    cidr_block = var.subnet_cidr_block
    compartment_id = var.compartment_id
    vcn_id = oci_core_vcn.rede-estudo.id
    display_name = var.public_subnet_name
    # dns_label = "sub_rede_estudo"
    freeform_tags = {"Subnet"= "Public"}
    security_list_ids = [oci_core_security_list.estudo_security_list.id]
    route_table_id = oci_core_route_table.estudo_route_table.id
    dhcp_options_id = oci_core_vcn.rede-estudo.default_dhcp_options_id
}

#internet gateway
resource "oci_core_internet_gateway" "test_internet_gateway" {
    compartment_id = var.compartment_id
    display_name   = "TestInternetGateway"
    vcn_id         = oci_core_vcn.rede-estudo.id
}

#route table
resource "oci_core_route_table" "estudo_route_table" {
    compartment_id = var.compartment_id
    display_name = "estudo_route_table"
    vcn_id = oci_core_vcn.rede-estudo.id

    route_rules {
        destination       = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
        network_entity_id = oci_core_internet_gateway.test_internet_gateway.id
        }
}