
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

resource "random_string" "random_string" {
    length = 6
    special = false
    upper = false
     
}


resource "azurerm_storage_account" "sa-ot" {
 # name                     = "${lower(var.rg_openTerra.name)}${random_string.random_string.result}"
  name                     = "${lower(var.rg_openTerra.name)}${substr(random_string.random_string.result, 0, 12)}"
  resource_group_name      = var.rg_openTerra.name
  location                 = var.rg_openTerra.location
  account_tier             = "Standard"
  account_replication_type = var.replic_type

}

resource "azurerm_storage_container" "sc-ot" {
  name                  = var.sc_name
  storage_account_name  = azurerm_storage_account.sa-ot.name
  container_access_type = "private"
}
