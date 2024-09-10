resource "azurerm_monitor_action_group" "am_ag" {
  name                = "AdminSMSAlerts"
  resource_group_name = azurerm_resource_group.rg_az104.name
  short_name          = "Admin SMS"

  sms_receiver {
    name         = "Admin SMS Alerts"
    country_code = var.country_code
    phone_number = var.mobile_no
  }
 
}