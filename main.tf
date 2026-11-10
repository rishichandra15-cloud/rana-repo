terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm" 
            version = "5.6.0"

        }
    }

    backend "azurerm" {
      
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "rg" {
    name = "rishi-rg" 
    location = "central india"

    tags = {
        owner = "rishi"
    }
}