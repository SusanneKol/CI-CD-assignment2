output "vm_out_ip" {
    value = azurerm_linux_virtual_machine.vm-ot.private_ip_address
}


output "vm_out_pip" {
    value = azurerm_linux_virtual_machine.vm-ot.public_ip_address
}