#main variables

variable "rg_name" {
  type        = string
  description = "Resource group name"
  default     = ""
}

variable "rg_location" {
  type        = string
  description = "Resource group location"
  default     = ""
}

variable "vn_name" {
  type        = string
  description = "The name of the virtual network"
  default     = ""
}

variable "sn_name" {
  type        = string
  description = "Name of the subnet of the net"
  default     = ""
}

variable "addr_vn" {
  type        = list(string)
  description = "Address space for virtual network"
}

variable "addr_sn" {
  type        = list(string)
  description = "Address space for subnet"
}

variable "sg_name" {
  type        = string
  description = "name of the security group"
  default     = ""
}

variable "source_addr" {
  type        = string
  description = "Source address prefix"
  default     = ""
}

variable "public_ip_name" {
  type        = string
  description = "name of the public ip"
  default     = ""
}

variable "network_int_name" {
  type        = string
  description = "name of network interface"
  default     = ""
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
  default     = ""
}

variable "admin_user" {
  type        = string
  description = "Username for admin"
  default     = ""
}

variable "admin_pass" {
  type        = string
  description = "password for admin user"
  default     = ""
}

variable "vm_size" {
  type        = string
  description = "The size of the VM"
  default     = ""
}


variable "sku_size" {
  type        = string
  description = "sku size"
  default     = ""
}

variable "replic_type" {
  type        = string
  description = "Account replication type"
  default     = ""
}

variable "sc_name" {
  type        = string
  description = "storage container name"
  default     = ""
}

variable "kv_ot_name" {
  type        = string
  description = "The name of the Key vault"
  default     = ""
}

variable "sa_ot_accesskey_name" {
  type        = string
  description = "storage account access key name"
  default     = ""
}

variable "primary_access_key" {
  type        = string
  description = "Primary access key"
  default     = ""
}