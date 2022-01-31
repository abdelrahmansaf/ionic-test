terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "tform-sabdulrahman"
        storage_account_name = "suckitterra"
        container_name       = "myfuckingcontainer"
        key                  = "terraform.tfstate"
    }

}



provider "azurerm" {
  version = "~>2.0"
  features {}
}


# resource "azurerm_resource_group" "rg" {
#     name = "tform-sabdulrahmans"
#     location = "westeurope"
# }




resource "azurerm_app_service_plan" "app_plan" {
  name                = "sosoplanmomo"
  location            = "westeurope"
  resource_group_name = "tform-sabdulrahman"

  sku {
    tier = "Standard"
  
    size = "S1"
  }
}




resource "azurerm_app_service" "web_app_1" {
  name                = "cocofofowebapp"
  location            = "westeurope"
  resource_group_name = "tform-sabdulrahman"
  app_service_plan_id = azurerm_app_service_plan.app_plan.id
}
