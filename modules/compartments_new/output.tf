output "compartment_ocid" {
  //value = oci_identity_compartment.compartment[*].id
  //value = oci_identity_compartment.compartment
  value = { for compartment, ocid in oci_identity_compartment.compartment : compartment => ocid.id }
}