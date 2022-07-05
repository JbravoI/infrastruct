# Creating App Sevice Plan
resource "azurerm_service_plan" "appserviceplan" {
  depends_on=[var.resourcename]
  name                = "${var.prefix}-appserviceplan"
  location            = var.environmentlocation
  resource_group_name = var.environmentname
  os_type             = "Windows"
  sku_name            =  "P1v2"

  # sku {
  #   tier = var.skutier
  #   size = var.skusize
  # }
}

# Creating App Service
resource "azurerm_windows_web_app" "appservice" {
  depends_on=[var.resourcename]
  name                = "${var.prefix}-app-service"
  location            = var.environmentlocation
  resource_group_name = var.environmentname
  service_plan_id     = azurerm_service_plan.appserviceplan.id

  site_config {
   }

#   app_settings = {
#     "SOME_KEY" = "some-value"
#   }

#   connection_string {
#     name  = "Database"
#     type  = "SQLServer"
#     value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
#   }
}