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
  source = "../modules/compartments"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_prod
  compartment_ocid = module.compartments.compartment_ocid[0]
  freeform_tags    = var.sub_compartments_prod
  env              = var.prod_env
}

module "sub_compartments_non_prod" {
  source = "../modules/compartments"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_non_prod
  compartment_ocid = module.compartments.compartment_ocid[1]
  freeform_tags    = var.sub_compartments_non_prod
  env              = var.non_prod_env
}

module "sub_compartments_prod_iris" {
  source = "../modules/compartments"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_iris
  compartment_ocid = module.sub_compartments_prod.compartment_ocid[0]
  freeform_tags    = var.sub_compartments_iris
  env              = var.prod_env
  app              = var.iris_app
}

module "sub_compartments_prod_HCPRO" {
  source = "../modules/compartments"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_HCPRO
  compartment_ocid = module.sub_compartments_prod.compartment_ocid[1]
  freeform_tags    = var.sub_compartments_HCPRO
  env              = var.prod_env
  app              = var.HCPRO_app
}

module "sub_compartments_non_prod_iris" {
  source = "../modules/compartments"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_iris
  compartment_ocid = module.sub_compartments_non_prod.compartment_ocid[0]
  freeform_tags    = var.sub_compartments_iris
  env              = var.non_prod_env
  app              = var.iris_app
}

module "sub_compartments_non_prod_HCPRO" {
  source = "../modules/compartments"
  providers = {
    oci = oci.main
  }
  compartments     = var.sub_compartments_HCPRO
  compartment_ocid = module.sub_compartments_non_prod.compartment_ocid[1]
  freeform_tags    = var.sub_compartments_HCPRO
  env              = var.non_prod_env
  app              = var.HCPRO_app
}




