terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-dev"
    storage_account_name = "commonstgt21"
    container_name = "tfcont"
    key = "vishnub.tfstate"
  }
}

provider "azurerm" {
  features {}
}