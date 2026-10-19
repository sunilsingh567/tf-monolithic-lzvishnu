terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "Common-RG"
    storage_account_name = "commonstg123"
    container_name = "tfcnt"
    key = "vishnut.fstate"
  }
}

provider "azurerm" {
  features {}
}