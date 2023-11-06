
variable "rg_openTerra" {
    type = object({
      name = string
      id   = string
      location = string
    })
  
}

variable "vm_name" {
    type = string
    description = "Name of the virtual machine"
    default = ""
}

variable "admin_user" {
    type = string
    description = "Username for admin"
    default = ""
}

variable "admin_pass" {
    type = string
    description = "password for admin user"
    default = ""
}

variable "nic_id" {
    type = string
    description = "nic id from Network module"
    default = ""
}


variable "vm_size" {
    type = string
    description = "The size of the VM"
    default = ""
}


variable "sku_size" {
    type = string
    description = "sku size"
    default = ""
}