terraform {
  backend "azurerm" {
    resource_group_name  = "rg.tfstate"
    storage_account_name = "saangotfstate"
    container_name       = "az104-tfstate"
    key                  = "az104.terraform.tfstate"
  }
}