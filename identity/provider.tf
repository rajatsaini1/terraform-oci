provider "oci" {
  region = "us-ashburn-1"
  auth = "InstancePrincipal"
}

provider "oci" {
  alias  = "main"
  region = "us-ashburn-1"
  auth = "InstancePrincipal"
}

terraform {
  required_version = ">= 1.1"
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 4"
      configuration_aliases = [oci.main,oci]
      # https://registry.terraform.io/providers/oracle/oci/
    }
  }
}
