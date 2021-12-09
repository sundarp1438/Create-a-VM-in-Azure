resource "azurerm_subnet" "mysubnet" {
  name = "myfrontendsubnet"
  location = "northeurope"
  addreaddress_prefixes = ["10.0.1.0/24"]
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
}