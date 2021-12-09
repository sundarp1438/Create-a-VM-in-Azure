resource "azurerm_windows_virtual_machine" "web" {
  name = "myvm1"
  location = "northeurope"
  resource_group_name = azurerm_resource_group.rg.name
  network_interface_ids = [azurerm_network_interface.myvmnic.id]
  size = "Standard_B1s"
  admin_username = "adminuser"
  admin_password = "Passw0rd@123"

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer = "WindowsServer"
    sku = "2019-Datacenter"
    version = "latest"
  }

  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
}