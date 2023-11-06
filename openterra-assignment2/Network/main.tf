

resource "azurerm_virtual_network" "vnet-ot" {

  name = var.vn_name
  location            = var.rg_openTerra.location
  resource_group_name = var.rg_openTerra.name
  address_space       = var.addr_vn
}

resource "azurerm_subnet" "sn-ot" {
  name                 = var.sn_name
  resource_group_name  = var.rg_openTerra.name
  virtual_network_name = azurerm_virtual_network.vnet-ot.name
  address_prefixes     = var.addr_sn

}


resource "azurerm_network_security_group" "nsg-ot" {
  name                = var.sg_name
  location            = var.rg_openTerra.location
  resource_group_name = var.rg_openTerra.name

  security_rule {
    name                       = "Allow-Public-IP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "22"
    destination_port_range     = "22"
    source_address_prefix      = var.source_addr
    destination_address_prefix = "*"
  }
}


resource "azurerm_subnet_network_security_group_association" "nsg-ot" {
  subnet_id                 = azurerm_subnet.sn-ot.id
  network_security_group_id = azurerm_network_security_group.nsg-ot.id
}

resource "azurerm_public_ip" "pip-ot" {
  name                = var.public_ip_name
  resource_group_name = var.rg_openTerra.name
  location            = var.rg_openTerra.location
  allocation_method   = "Static"

}

resource "azurerm_network_interface" "nic-ot" {
  name                = var.network_int_name
  location            = var.rg_openTerra.location
  resource_group_name = var.rg_openTerra.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.sn-ot.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip-ot.id
  }
}
