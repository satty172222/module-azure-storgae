
#############################################################################
# Terraform Storage account creation
############################################################################# 
# File:     Storage 
# Version:  v.1.0 - Use case one 
#############################################################################
provider "azurerm" {
  features {}
  #version = "value"
}
/*
resource "random_string" "unique" {
  length  = 6
  special = false
  upper   = false
}
*/

data "azurerm_resource_group" "rg_name" {
 # name = "rg-dcr-tst-01-RGP-01"
  name = "rg-dcr-tst-01-RGP-02"
}

resource "azurerm_storage_account" "storage_account" {
  #name                      = "${lower(var.az_sa_name)}${random_integer.az_sa_num.result}"
  #name = format("sta%s%s", lower(replace(var.storage_account_name, "/[[:^alnum:]]/", "")), random_string.unique.result)
  name                      = var.storage_account_name
  resource_group_name       = data.azurerm_resource_group.rg_name.name
  location                  = var.location
  account_kind              = var.account_kind
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
  enable_https_traffic_only = var.enable_https_traffic_only
  min_tls_version           = var.min_tls_version

}
