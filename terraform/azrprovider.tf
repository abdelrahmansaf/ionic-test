terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.46.0"
    }
  }
}


provider "azurerm" {
  features {}
}

terraform {
 backend "azurerm" {
    resource_group_name = "test"
    storage_account_name = "stgmyteststaccount"
    container_name = "terraform-container"
    key= "terraform.tfstate"

 }
}
