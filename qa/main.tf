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


resource "azurerm_resource_group" "rg458" {
    name = "rishi-rg458" 
    location = "central india"

    tags = {
        owner = "rishi"
    }
}