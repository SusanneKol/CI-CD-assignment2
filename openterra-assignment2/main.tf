terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.74.0"
    }
  }
    #backend "azurerm" {
    #resource_group_name  = "rg-backend-tfstate"
    #storage_account_name = "sanvhekfha8o1j2lc6t"
    #container_name       = "tfstate"
    #key                  = "prod.terraform.tfstate"
 # }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-open-terra" {
  name     = var.rg_name
  location = var.rg_location
}


module "Network" {
  source           = "./Network"
  rg_openTerra     = azurerm_resource_group.rg-open-terra
  rg_location      = "West Europe"
  vn_name          = var.vn_name
  sn_name          = var.sn_name
  addr_vn          = var.addr_vn
  sg_name          = var.sg_name
  addr_sn          = var.addr_sn
  source_addr      = var.source_addr
  public_ip_name   = var.public_ip_name
  network_int_name = var.network_int_name

}

module "VirtuelMachine" {
  source       = "./VirtuelMachine"
  rg_openTerra = azurerm_resource_group.rg-open-terra
  vm_name      = var.vm_name
  admin_user   = var.admin_user
  admin_pass   = var.admin_pass
  nic_id       = module.Network.nic_id
  vm_size      = var.vm_size
  sku_size     = var.sku_size
}


module "StorageAccount" {
  source       = "./StorageAccount"
  rg_openTerra = azurerm_resource_group.rg-open-terra
  replic_type  = var.replic_type
  sc_name      = var.sc_name

}

module "KeyVault" {
  source               = "./KeyVault"
  rg_openTerra         = azurerm_resource_group.rg-open-terra
  primary_access_key   = module.StorageAccount.key
  kv_ot_name           = var.kv_ot_name
  sa_ot_accesskey_name = var.sa_ot_accesskey_name
}

# endre her