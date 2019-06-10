resource "azurerm_container_registry" "registry" {
  count               = "${var.create_resource ? 1 : 0 }"
  name                = "${var.registry_name}"
  resource_group_name = "${var.resource_group_name}"
  location            = "${var.resource_group_location}"
  admin_enabled       = "${var.registry_admin_enabled}"
  sku                 = "${var.registry_sku}"

  # storage_account_id  = "${azurerm_storage_account.registry.id}"
}
