output "keyvault_id" {
  # used in conjunction with count logic on resource
  # value = "${element(concat(azurerm_key_vault.vault.*.id, list("")), 0)}"
  value = azurerm_key_vault.vault.id

}

output "keyvault_uri" {
  # used in conjunction with count logic on resource
  # value = "${element(concat(azurerm_key_vault.vault.*.vault_uri, list("")), 0)}"
  value = azurerm_key_vault.vault.vault_uri
}