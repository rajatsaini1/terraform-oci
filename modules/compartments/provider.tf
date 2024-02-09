provider "oci" {
  auth = "InstancePrincipal"
  region = "ap-mumbai-1"
  alias = "main"
}

terraform {
  required_version = ">= 1.1"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 4"
      # https://registry.terraform.io/providers/oracle/oci/
    }
  }
}