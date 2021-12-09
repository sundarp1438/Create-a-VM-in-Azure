resource "azurerm_virtual_network" "myvnet" {
  name = "my-vnet"
  location = "northeurope"
  resource_group_name = azurerm_resource_group.rg.name
  address_space = [ "10.0.0.0/16" ]
}