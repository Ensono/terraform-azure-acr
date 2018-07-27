output "registry_id" {
  value = "${azurerm_container_registry.registry.0.id}"
}

output "login_server" {
  value = "${azurerm_container_registry.registry.0.login_server}"
}

output "admin_username" {
  value = "${azurerm_container_registry.registry.0.admin_username}"
}

output "admin_password" {
  value = "${azurerm_container_registry.registry.0.admin_password}"
}
