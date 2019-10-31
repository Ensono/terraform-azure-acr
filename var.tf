##################################################
# Control Vars
##################################################

variable "create_resource_group" {
  type = bool
  default = false
}

# If this is set to false, a valid resource_group_name 
# and resource_group_location need to be specified below


##################################################
# Resource Group info
##################################################

variable "resource_group_location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "resource_group_tags" {
  type = map
  default = {}
}

##################################################
# Vault Config
##################################################

variable "vault_name" {
  type = string
}

variable "vault_sku" {
  type = string
  default = "standard"
}

##################################################
# Vault Security
##################################################

variable "block_access_by_default" {
  type = bool
  default = false
 }

variable "permitted_subnet_ids" {
  type = list
  default = []
}
variable "permitted_cidr_ranges" {
  type = list
  default = []
}