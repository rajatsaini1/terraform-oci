module "compartments" {
  source = "../modules/compartments"
  providers = {
    oci = oci.main
  }
  compartments     = var.compartments
  compartment_ocid = var.compartment_ocid
  freeform_tags    = var.compartments
}

module "sub_compartments_prod" {
  source = "../modules/compartments_new"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_prod
  compartment_ocid = module.compartments.compartment_ocid["Production"]
  freeform_tags    = var.sub_compartments_prod
  env              = var.prod_env
}

module "sub_compartments_non_prod" {
  source = "../modules/compartments_new"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_non_prod
  compartment_ocid = module.compartments.compartment_ocid["Non-Production"]
  freeform_tags    = var.sub_compartments_non_prod
  env              = var.non_prod_env
}

module "sub_compartments_prod_iris" {
  source = "../modules/compartments_new"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_iris
  compartment_ocid = module.sub_compartments_prod.compartment_ocid["IRIS"]
  freeform_tags    = var.sub_compartments_iris
  env              = var.prod_env
  app              = var.iris_app
}

module "sub_compartments_prod_HCPRO" {
  source = "../modules/compartments_new"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_HCPRO
  compartment_ocid = module.sub_compartments_prod.compartment_ocid["HCPRO"]
  freeform_tags    = var.sub_compartments_HCPRO
  env              = var.prod_env
  app              = var.HCPRO_app
}

module "sub_compartments_non_prod_iris" {
  source = "../modules/compartments_new"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_iris
  compartment_ocid = module.sub_compartments_non_prod.compartment_ocid["IRIS"]
  freeform_tags    = var.sub_compartments_iris
  env              = var.non_prod_env
  app              = var.iris_app
}

module "sub_compartments_non_prod_HCPRO" {
  source = "../modules/compartments_new"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_HCPRO
  compartment_ocid = module.sub_compartments_non_prod.compartment_ocid["HCPRO"]
  freeform_tags    = var.sub_compartments_HCPRO
  env              = var.non_prod_env
  app              = var.HCPRO_app
}


resource "oci_identity_compartment" "compartment" {
  name           = "test"
  description    = "test"
  compartment_id = var.compartment_ocid
  #freeform_tags  = { (var.tag_key) = (each.key), "Env" = var.env, "App" = var.app }
}

moved {
  from = module.compartments.oci_identity_compartment.compartment[0]
  to   = module.compartments.oci_identity_compartment.compartment["Production"]
}

moved {
  from = module.compartments.oci_identity_compartment.compartment[1]
  to   = module.compartments.oci_identity_compartment.compartment["Non-Production"]
}

moved {
  from = module.compartments.oci_identity_compartment.compartment[2]
  to   = module.compartments.oci_identity_compartment.compartment["OracleFunctions"]
}

moved {
  from = module.sub_compartments_prod.oci_identity_compartment.compartment[0]
  to   = module.sub_compartments_prod.oci_identity_compartment.compartment["IRIS"]
}

moved {
  from = module.sub_compartments_prod.oci_identity_compartment.compartment[1]
  to   = module.sub_compartments_prod.oci_identity_compartment.compartment["HCPRO"]
}

moved {
  from = module.sub_compartments_non_prod.oci_identity_compartment.compartment[0]
  to   = module.sub_compartments_non_prod.oci_identity_compartment.compartment["IRIS"]
}

moved {
  from = module.sub_compartments_non_prod.oci_identity_compartment.compartment[1]
  to   = module.sub_compartments_non_prod.oci_identity_compartment.compartment["HCPRO"]
}

moved {
  from = module.sub_compartments_prod_iris.oci_identity_compartment.compartment[0]
  to   = module.sub_compartments_prod_iris.oci_identity_compartment.compartment["Network"]
}

moved {
  from = module.sub_compartments_prod_iris.oci_identity_compartment.compartment[1]
  to   = module.sub_compartments_prod_iris.oci_identity_compartment.compartment["Application"]
}

moved {
  from = module.sub_compartments_prod_iris.oci_identity_compartment.compartment[2]
  to   = module.sub_compartments_prod_iris.oci_identity_compartment.compartment["Security"]
}

moved {
  from = module.sub_compartments_non_prod_iris.oci_identity_compartment.compartment[0]
  to   = module.sub_compartments_non_prod_iris.oci_identity_compartment.compartment["Network"]
}

moved {
  from = module.sub_compartments_non_prod_iris.oci_identity_compartment.compartment[1]
  to   = module.sub_compartments_non_prod_iris.oci_identity_compartment.compartment["Application"]
}

moved {
  from = module.sub_compartments_non_prod_iris.oci_identity_compartment.compartment[2]
  to   = module.sub_compartments_non_prod_iris.oci_identity_compartment.compartment["Security"]
}

moved {
  from = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment[0]
  to   = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment["Network"]
}

moved {
  from = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment[1]
  to   = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment["Application"]
}

moved {
  from = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment[2]
  to   = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment["Database"]
}

moved {
  from = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment[3]
  to   = module.sub_compartments_non_prod_HCPRO.oci_identity_compartment.compartment["Security"]
}

moved {
  from = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment[0]
  to   = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment["Network"]
}

moved {
  from = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment[1]
  to   = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment["Application"]
}

moved {
  from = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment[2]
  to   = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment["Database"]
}

moved {
  from = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment[3]
  to   = module.sub_compartments_prod_HCPRO.oci_identity_compartment.compartment["Security"]
}
