output "appserviceplan" {
  value = azurerm_service_plan.appserviceplan.id
}

output "appservice" {
  value = azurerm_windows_web_app.appservice.id
}