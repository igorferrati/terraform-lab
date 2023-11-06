# Instance Oracle
## Overview Architecture
* VCN
* Subnet
* Internet Gateway
* Route Table (default)
* Instance

Referencies [oracle repository](https://github.com/oracle/terraform-provider-oci/blob/master/examples/compute/instance/instance.tf)

---
## Variables
### Variables Provider

| Variable | Default Value | Description |
| :---:|:---:|:---: |
| ```tenancy_ocid```| xxx| tenancy ocid |
| ```user_ocid```| xxx| user ocid |
| ```private_key_path```| xxx| private key oci path|
| ```fingerprint```| xxx | oci fingerprint |
| ```region```| xxx | oci region |

### Variables Instances

| Variable | Default Value | Description |
| :---:|:---:|:---: |
| ```instance_availability_domain```| sp| instance availability domain |
| ```compartment_id```| xxx| compartment id |
| ```instance_shape```| xxx| instance shape |
| ```instance_display_name```| xxx | instance display name |
| ```ssh_public_key```| xxx | ssh public key |

### VCN

| Variable | Default Value | Description |
| :---:|:---:|:---: |
| ```vcn_name```| xxx| VCN name |
| ```cidr_block```| 10.0.0.0/24| CIDR Block |

### Subnet
| Variable | Default Value | Description |
| :---:|:---:|:---: |
| ```subnet_cidr_block```| 10.0.0.0/24| CIDR Subnet Block |
| ```public_subnet_name```| xxx | Subnet name |

---

### Network
CIRDR ```10.0.0.0/24```
* Network Address: ```10.0.0.0```
* Subnet Mask: ```255.255.255.0```
* Usable IP Range: ```10.0.0.1``` to ```10.0.0.254```
* Total Number of Usable IP Addresses: 254

It's a class C network with 256 addresses and is suitable for small to medium-sized private networks.

---
### Expose Ports

