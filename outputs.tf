output "registry_id" {
  value = "${azurerm_container_registry.registry.*.id}"
}

output "login_server" {
  value = "${azurerm_container_registry.registry.*.login_server}"
}

output "admin_username" {
  value = "${azurerm_container_registry.registry.*.admin_username}"
}

output "admin_password" {
  value = "${azurerm_container_registry.registry.*.admin_password}"
}
