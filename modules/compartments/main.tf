# create multiple compartments on oci
resource "oci_identity_compartment" "compartment" {
  count           = length(var.compartments)
  name            = var.compartments[count.index].name
  description     = var.compartments[count.index].desc
  compartment_id  = var.compartment_ocid 
  freeform_tags   = {(var.tag_key) = (var.compartments[count.index].name), "Env" = var.env,  "App" = var.app}
  #freeform_tags   = {(var.freeform_tags[count.index].tag_key) = (var.freeform_tags[count.index].name), "Env" = var.env,  "App" = var.app}
}