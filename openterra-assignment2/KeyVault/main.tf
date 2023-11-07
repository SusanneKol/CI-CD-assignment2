
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}

resource "random_string" "random_string" {
    length = 7
    special = false
    upper = false
     
}


data "azurerm_client_config" "current" {}


resource "azurerm_key_vault" "kv_ot" {
  name = "${lower(var.kv_ot_name)}${random_string.random_string.result}"
  location                    = var.rg_openTerra.location
  resource_group_name         = var.rg_openTerra.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false


  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"
    ]

    secret_permissions = [
      "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"
    ]

    storage_permissions = [
      "Backup", "Delete", "DeleteSAS", "Get", "GetSAS", "List", "ListSAS", "Purge", "Recover", "RegenerateKey", "Restore", "Set", "SetSAS", "Update"
    ]
  }
}


resource "azurerm_key_vault_secret" "kvs_ot" {
  name         = var.sa_ot_accesskey_name
  value        = var.primary_access_key
  key_vault_id = azurerm_key_vault.kv_ot.id
}

