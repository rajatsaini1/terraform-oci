# OCI Provider
variable "tenancy_ocid" {
  default = ""
}
variable "compartment_ocid" {
  default = ""
}
variable "region" {
  default = ""
}

variable "compartments" {
}

# prod compartments variables

variable "sub_compartments_prod" {}

variable "prod_env" {
  default = "production"
  type    = string
}

# non-prod compartments variables

variable "sub_compartments_non_prod" {
}

variable "non_prod_env" {
  default = "Non-Production"
  type    = string
}

variable "iris_app" {
  default = "IRIS"
  type    = string
}

variable "HCPRO_app" {
  default = "HCPRO"
  type    = string
}

variable "sub_compartments_iris" {
}

variable "sub_compartments_HCPRO" {
}