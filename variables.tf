variable "app_name" {
  type    = string
  default = "true-budget"
}

variable "devise_jwt_secret_key" {
  type = string
  sensitive = true
}

variable "heroku_username" {
  type = string
  sensitive = true
}

variable "heroku_api_key" {
  type = string
  sensitive = true
}
