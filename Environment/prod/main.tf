# Resource Group
resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resource_group_name
  location = var.location
}

# Module to create Vnet
module "vnet" {
  source              = "../../modules/networking"
  environmentlocation = var.location
  environmentname     = var.resource_group_name
  resourcename        = azurerm_resource_group.resourcegroup
}

# Module to create NSG
module "network-security-group" {
  source              = "../../modules/nsg"
  environmentlocation = var.location
  environmentname     = var.resource_group_name
  subnetid            = module.vnet.subnet1id
  resourcename        = azurerm_resource_group.resourcegroup
}

# Module to Virtual Machine
module "vm" {
  source              = "../../modules/virtualmachine"
  environmentlocation = var.location
  environmentname     = var.resource_group_name
  networkinterface    = module.vnet.networkinterface
  vmsize              = var.vmsizes
  storageaccounttype  = var.storageaccounttypes
  resourcename        = azurerm_resource_group.resourcegroup
}

# Module to app service plan
module "service_plan" {
  source              = "../../modules/appservice"
  environmentlocation = var.location
  environmentname     = var.resource_group_name
  skutier             = var.skutiers
  skusize             = var.skusizes
  resourcename        = azurerm_resource_group.resourcegroup
}

module "app_service" {
  source              = "../../modules/appservice"
  environmentlocation = var.location
  environmentname     = var.resource_group_name
  skutier             = var.skutiers
  skusize             = var.skusizes
  resourcename        = azurerm_resource_group.resourcegroup
}

# output "vm_public_name" {
#   value = module.vm.public_ip_dns_name
# }