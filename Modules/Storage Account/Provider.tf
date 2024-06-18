terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.108.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "masterRG"
    storage_account_name =  "masterstorageacc311"
    container_name = "storage-container"
    key = "Modules/Storage Account/terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}