resource "azurerm_public_ip" "mypublicip" {
  name = "publicip1"
  location = "northeurope"
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method = "Dynamic"
  sku = "Basic"
}