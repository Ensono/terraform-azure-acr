##################################################
# Resource Groups

# Obtain existing RG config if 'create_resource_group' is set to false (defaults false)
data "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 0 : 1
  name     = var.resource_group_name
}

# Create RG if 'create_resource_group' is set to true (defaults false)
resource "azurerm_resource_group" "rg" {
  count    = var.create_resource_group ? 1 : 0
  name     = var.resource_group_name
  location = var.resource_group_location
  tags     = var.resource_group_tags
}
