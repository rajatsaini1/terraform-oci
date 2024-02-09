prod_env = "Production"
compartments = [
  {
    name = "Production"
    desc = "Compartment for Production"
  }
  ,
  {
    name = "Non-Production"
    desc = "Compartment for Non-Production"
  }
  # ,
  # {
  #   name = "OracleFunctions"
  #   desc = "Compartment for OracleFunctions"
  # }
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