resource "azurerm_postgresql_server" "database_server" {
  name                         = "${var.app_name}-database-server"
  sku_name                     = "S0"
  location                     = var.resource_group_location
  resource_group_name          = local.resource_group_name
  storage_mb                   = 5120
  auto_grow_enabled            = false
  administrator_login          = var.database_admin_user
  administrator_login_password = var.database_admin_password
  version                      = "11"
  ssl_enforcement_enabled = true
}

resource "azurerm_postgresql_database" "database" {
  name                = var.database_name
  server_name         = azurerm_postgresql_server.database_server.name
  resource_group_name = local.resource_group_name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
