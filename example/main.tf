provider "azurerm" {}

resource "random_pet" "rg" {
  length    = 1
  separator = "-"
  prefix    = "next-example-kv"
}

resource "random_pet" "vault" {
  length    = 1
  separator = ""
  prefix    = "nextexamplekv"
}
module "keyvault" {
  source = "../"
  # source = "git::https://dev.azure.com/Next-Ecommerce/Next.Ecommerce.Infrastructure/_git/Next.Ecommerce.Infrastructure.Modules//terraform/azure/keyvault"  
  create_resource_group = var.create_resource_group
  resource_group_location = var.resource_group_location
  resource_group_name = random_pet.rg.id
  vault_name = random_pet.vault.id
}
