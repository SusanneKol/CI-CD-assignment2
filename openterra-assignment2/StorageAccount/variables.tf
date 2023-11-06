
variable "rg_openTerra" {
    type = object({
      name = string
      id   = string
      location = string
    })
  
}

variable "replic_type" {
    type = string
    description = "Account replication type"
    default = ""
}

variable "sc_name" {
    type = string
    description = "storage container name"
    default = ""
}