
output "vnetid" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet1id" {
  value = azurerm_subnet.subnet1.id
}

output "subnet2id" {
  value = azurerm_subnet.subnet2.id
}

output "networkinterface" {
  value = azurerm_network_interface.networkinterface.id
}

output "publicip" {
  value = azurerm_public_ip.vmpublicip.id
}