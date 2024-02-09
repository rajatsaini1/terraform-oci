output "compartment_ocid" {
    value = "${oci_identity_compartment.compartment[*].id}"
}

# output "sub_compartment_ocid" {
#     value = "${oci_identity_compartment.compartment[*].id}"
# }