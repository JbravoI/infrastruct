
variable "resource_group_name" {
  description = "name of resource group"
  default     = "Sandbox"
}


variable "location" {
  description = "azure location to deploy resources"
  default     = "eastus"
}

variable "vmsizes" {
  description = "Size for the virtual machine"
  default     = "Standard_B1s"
}

variable "storageaccounttypes" {
  description = "Storage type for the virtual machine"
  default     = "Standard_LRS"
}

variable "skutiers" {
  description = "sku tiers for app service"
  default     = "Standard"
}

variable "skusizes" {
  description = "sku sizes for app service"
  default     = "S1"
}