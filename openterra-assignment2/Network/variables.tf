
variable "rg_location" {
  type        = string
  description = "The resource group name"
}

variable "rg_openTerra" {
    type = object({
      name = string
      id   = string
      location = string
    })
  
}

variable "vn_name" {
  type = string
  description = "The name of the virtual network"
  default = ""
}

variable "sn_name" {
  type = string
  description = "Name of the subnet"
  default = ""
}

variable "sg_name" {
  type = string
  description = "name of the security group"
  default = ""
}

variable "addr_vn" {
  type = list(string)
  description = "Address space for virtual network"
 
}

variable "addr_sn" {
  type = list(string)
  description = "Address space for subnet"
  
}

variable "source_addr" {
  type = string
  description = "Source address prefix"
  default = ""
}

variable "public_ip_name" {
  type = string
  description = "name of the public ip"
  default = ""
}

variable "network_int_name" {
  type = string
  description = "name of network interface"
  default = ""
}