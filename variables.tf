variable "resource_group_name_prefix" {
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  default     = "southcentralus"
  description = "Location of the resource group."
}

variable "app_name" {
  type    = string
  default = "true-budget"
}

variable "database_name" {
  type    = string
  default = "true-budget-db"
}

variable "database_admin_user" {
  type = string
  sensitive = true
}

variable "database_admin_password" {
  type = string
  sensitive = true
}

variable "devise_jwt_secret_key" {
  type      = string
  sensitive = true
}

variable "subscription_id" {
  type      = string
  sensitive = true
}

variable "client_id" {
  type      = string
  sensitive = true
}

variable "client_secret" {
  type      = string
  sensitive = true
}

variable "tenant_id" {
  type      = string
  sensitive = true
}
