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


resource "azurerm_resource_group" "rg455" {
    name = "rishi-rg455" 
    location = "central india"

    tags = {
        owner = "rishi"
    }
}