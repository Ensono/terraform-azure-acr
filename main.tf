resource "azurerm_container_registry" "registry" {
  name                = "${var.registry_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.resource_group_location}"
  admin_enabled       = "${var.registry_admin_enabled}"
  sku                 = "${var.registry_sku}"

  # storage_account_id  = "${azurerm_storage_account.registry.id}"
}

# Storage Accounts are only required for Classic/Unmanaged Registry SKUs, so this is a conditional creation
resource "azurerm_storage_account" "registry" {
  count                    = "${var.registry_sku_is_classic}"
  name                     = "${azurerm_resource_group.registry.name}"
  resource_group_name      = "${azurerm_resource_group.registry.name}"
  location                 = "${azurerm_resource_group.registry.location}"
  account_tier             = "${var.registry_storage_class}"
  account_replication_type = "GRS"
}
