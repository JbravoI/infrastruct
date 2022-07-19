# variable "prefix" {
#   description = "name of resource"
#   default     = "Me"
# }

variable "environmentlocation" {
  description = "filled in module"
}

variable "environmentname" {
  description = "filled in module"
}

variable "vm_username" {
  description = "username of VM"
  default = "mevirtual"
}

variable "vm_password" {
  description = "username of VM"
  default = "Password44$"
}

variable "networkinterface" {
  description = "filled in module"
}

variable "vmsize" {
  description = "filled in module"
}

variable "storageaccounttype" {
  description = "filled in module"
}

variable "resourcename" {
  description = "filled in module"
}