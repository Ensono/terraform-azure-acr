provider "azurerm" {}

resource "random_pet" "name" {
  length    = 2
  separator = ""
  prefix    = "aks"
}

module "aks-registry" {
  source                  = "git::https://github.com/amido/terraform-azure-acr.git"
  resource_group_name     = "${random_pet.name.id}"
  resource_group_location = "${var.resource_group_location}"
}
