module "md_resource_group" {
  source              = "../module/azurerm_resourc_group" # fixed spelling of module folder
  resource_group_name = "rg-vivekb1243"
  location            = "west us"
}

module "md_stroage_account" {
  depends_on           = [module.md_resource_group]
  source               = "../module/azurerm_stroage_account"
  storage_account_name = "vivekstroageacct986"
  resource_group_name  = "rg-vivekb1243"
  location             = "west us"
 }


# Creates an Azure Storage Account with security tool integration.
# Security Tool: Please specify the name of the security tool being used for monitoring or compliance.
# This resource ensures secure storage for your data and can be configured to meet organizational security requirements.