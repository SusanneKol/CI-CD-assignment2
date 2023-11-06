

resource "azurerm_linux_virtual_machine" "vm-ot" {
  name                            = var.vm_name
  resource_group_name             = var.rg_openTerra.name
  location                        = var.rg_openTerra.location
  size                            = var.vm_size
  admin_username                  = var.admin_user
  admin_password                  = var.admin_pass
  disable_password_authentication = false
  network_interface_ids = [
    var.nic_id, 
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = var.sku_size
    version   = "latest"
  }
}