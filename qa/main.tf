terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm" 
            version = "5.6.0"

        }
     }

    backend "azurerm" {
        resource_group_name = "admin_rg"
        container_name = "mycontainer"
        storage_storage_account_name = "storagepipeline11"
        key = "qa.tfstate"
      
    }
}

provider "azurerm" {
    features {}
}


resource "azurerm_resource_group" "rg460" {
    name = "rishi-rg460" 
    location = "central india"

    tags = {
        owner = "rishi"
    }
}