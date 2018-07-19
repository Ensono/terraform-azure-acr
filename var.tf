variable "resource_group_location" {
  default = "westeurope"
}

variable "resource_group_name" {
  default = "refazurecr"
}

variable "registry_sku" {
  default = "Standard"
}

variable "registry_sku_is_classic" {
  default = false
}

variable "registry_admin_enabled" {
  default = true
}

variable "registry_storage_class" {
  default = "Standard"
}

