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
  use_oidc = true
}

module "resource_group_storage" {
  source  = "trinidaa/terraform-azurerm-resource_group_storage"
  version = "1.0.0"
}
