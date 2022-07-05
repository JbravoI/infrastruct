resource "azurerm_linux_virtual_machine" "virtualmachine" {
  depends_on          = [var.resourcename]
  name                = "${var.prefix}-vm"
  resource_group_name = var.environmentname
  location            = var.environmentlocation
  size                = var.vmsize
  admin_username      = var.vm_username
  admin_password      = var.vm_password
  network_interface_ids = [var.networkinterface]
  disable_password_authentication = "false"
  

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

  os_disk {
    name                 = "${var.prefix}-disk"
    caching              = "ReadWrite"
    storage_account_type = var.storageaccounttype
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}