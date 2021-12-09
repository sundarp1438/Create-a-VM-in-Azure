resource "azurerm_network_interface" "myvmnic" {
  name = "myvm-nic"
  location = "northeurope"
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name = "ipconfig1"
    subnet_id = azurerm_subnet.mysubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.mypublicip.id
  }
}