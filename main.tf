resource "azurerm_key_vault" "vault" {
  name                        = var.vault_name
  location                    = var.create_resource_group ? azurerm_resource_group.rg[0].location : data.azurerm_resource_group.rg[0].location
  resource_group_name         = var.create_resource_group ? azurerm_resource_group.rg[0].name : data.azurerm_resource_group.rg[0].name 
  tenant_id                   = data.azurerm_client_config.current.tenant_id

  sku_name = var.vault_sku

  network_acls {
    default_action = var.block_access_by_default  ? "Deny" : "Allow"
    bypass         = "AzureServices"
    virtual_network_subnet_ids = var.block_access_by_default  ? var.permitted_subnet_ids : []
    ip_rules = var.block_access_by_default  ? var.permitted_cidr_ranges : []
  }

  tags = var.resource_group_tags
}
