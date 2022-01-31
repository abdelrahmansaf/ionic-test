resource "azurerm_app_service_plan" "app_plan" {
  name                = "planoplanoplano"
  location            = "westeurope"
  resource_group_name = "tform-sabdulrahman"

  sku {
    tier = "Standard"

    size = "S1"
  }
}



resource "azurerm_app_service" "web_app_1" {
  name                = "cocofofowebappliappli"
  location            = "westeurope"
  resource_group_name = "tform-sabdulrahman"
  app_service_plan_id = azurerm_app_service_plan.app_plan.id
}
