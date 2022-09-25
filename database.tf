resource "azurerm_postgresql_flexible_server" "database_server" {
  name                         = "${var.app_name}-database-server"
  sku_name                     = "B_Standard_B1ms"
  location                     = var.resource_group_location
  resource_group_name          = local.resource_group_name
  storage_mb                   = 32768
  administrator_login          = var.database_admin_user
  administrator_password = var.database_admin_password
  version                      = "12"
}