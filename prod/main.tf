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
        key = "terraform.tfstate"
      
    }
}

provider "azurerm" {
    features {}
}


resource "azurerm_resource_group" "rg468" {
    name = "rishi-rg468" 
    location = "central india"

    tags = {
        owner = "rishi"
    }
}