module "md_resource_group" {
  source              = "../module/azurerm_resourc_group" # fixed spelling of module folder
  resource_group_name = "rg-vivekb123"
  location            = "west us"
}

module "md_stroage_account" {
  depends_on           = [module.md_resource_group]
  source               = "../module/azurerm_stroage_account"
  storage_account_name = "vivekstroageaccount143"
  resource_group_name  = "rg-vivekb123"
  location             = "west us"
 }
