variable "compartments" {
  type = list(object({
    name = string
    desc = string
  }))
}

variable "compartment_ocid" {}
variable "freeform_tags" {
  default = [
    {
      tag_key = "name"
      name    = "Production"
    }
    ,
    {
      tag_key = "name"
      name    = "Non-Production"
    }
  ]
}

variable "env" {
  default = null
}

variable "app" {
  default = null
}

variable "tag_key" {
  default = "Name"
}
