terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "admin_rg"
    storage_account_name = "pipelinetfstate "
    container_name       = "xyzcontainer"
    key                  = "aaa.tfstate"
  }
}


provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "jac" {
    name = "bjcas"
    location = "east us"
    tags = {
      owner = "bikram"
    }
}