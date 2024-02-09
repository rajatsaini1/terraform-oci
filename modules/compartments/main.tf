# # create multiple compartments on oci
# resource "oci_identity_compartment" "compartment" {
#   count           = length(var.compartments)
#   name            = var.compartments[count.index].name
#   description     = var.compartments[count.index].desc
#   compartment_id  = var.compartment_ocid 
#   freeform_tags   = {(var.tag_key) = (var.compartments[count.index].name), "Env" = var.env,  "App" = var.app}
#   #freeform_tags   = {(var.freeform_tags[count.index].tag_key) = (var.freeform_tags[count.index].name), "Env" = var.env,  "App" = var.app}
# }

locals {

  compartment_names = [for item in var.compartments : [for k, v in item : v if k == "name"]]
  compartment_desc  = [for item in var.compartments : [for k, v in item : v if k == "desc"]]
  compartment_map   = { for item in var.compartments : item["name"] => item["desc"] }

}

resource "oci_identity_compartment" "compartment" {

  #for_each       = toset(flatten([for item in var.compartments : [for name, desc in item : name]]))
  for_each       = local.compartment_map
  name           = each.key
  description    = each.value
  compartment_id = var.compartment_ocid
  freeform_tags  = { (var.tag_key) = (each.key), "Env" = var.env, "App" = var.app }
}