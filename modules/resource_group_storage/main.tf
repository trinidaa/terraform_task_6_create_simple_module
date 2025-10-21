terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.70.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc             = true
}

resource "azurerm_resource_group" "myexample" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "myexample" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.myexample.name
  location                 = azurerm_resource_group.myexample.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}