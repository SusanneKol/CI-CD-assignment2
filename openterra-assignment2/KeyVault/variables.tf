variable "rg_openTerra" {
    type = object({
      name = string
      id   = string
      location = string
    })
  
}

variable "kv_ot_name" {
    type = string
    description = "The name of the Key vault"
    default = ""
}

variable "sa_ot_accesskey_name" {
    type = string
    description = "storage account access key name"
    default = ""
}

variable "primary_access_key" {
    type = string
    description = "Primary access key"
    default = ""
}