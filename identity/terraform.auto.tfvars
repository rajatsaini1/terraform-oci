prod_env = "Production"
compartments = [
  {
    name = "Production"
    desc = "Compartment for Production"
    ocid = "ocid1.tenancy.oc1..aaaaaaaa4pvujl2mmeqsx33rsd45z57f52ngwmroxzdfj7vgltrrvxyqd5wa"
  }
  ,
  {
    name = "Non-Production"
    desc = "Compartment for Non-Production"
    ocid = "ocid1.tenancy.oc1..aaaaaaaa4pvujl2mmeqsx33rsd45z57f52ngwmroxzdfj7vgltrrvxyqd5wa"
  },
  {
    name = "OracleFunctions"
    desc = "Compartment for OracleFunctions"
    ocid = "ocid1.compartment.oc1..aaaaaaaafenai6vuxirygqa5v2iv3nm4a2syywah3ftialhjiezv25axkr2a"
  }
]

sub_compartments_prod = [
  {
    name = "IRIS"
    desc = "Compartment for IRIS"
  }
  ,
  {
    name = "HCPRO"
    desc = "Compartment for HCPRO"
  }
]

sub_compartments_non_prod = [
  {
    name = "IRIS"
    desc = "Compartment for IRIS"
  }
  ,
  {
    name = "HCPRO"
    desc = "Compartment for HCPRO"
  }
]

sub_compartments_iris = [
  {
    name = "Network"
    desc = "Compartment for Network"
  }
  ,
  {
    name = "Application"
    desc = "Compartment for Application"
  }
  ,
  {
    name = "Security"
    desc = "Compartment for Security"
  }
]

sub_compartments_HCPRO = [
  {
    name = "Network"
    desc = "Compartment for Network"
  }
  ,
  {
    name = "Application"
    desc = "Compartment for Application"
  },
#   {
#     name = "Database"
#     desc = "Compartment for Databse"
#   }
#   ,
  {
    name = "Security"
    desc = "Compartment for Security"
  }
]

non_prod_env = "Non-Production"