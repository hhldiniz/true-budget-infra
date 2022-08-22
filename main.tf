terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 5.0"
    }
  }
  cloud {
    organization = "hugodiniz"

    workspaces {
      name = "true-budget-infra"
    }
  }
}

provider "heroku" {
  email   = var.heroku_username
  api_key = var.heroku_api_key
}

resource "heroku_app" "true_budget" {
  name       = var.app_name
  buildpacks = ["heroku/ruby"]
  region     = "us"
  stack      = "heroku-22"
  sensitive_config_vars = {
    "DEVISE_JWT_SECRET_KEY" = var.devise_jwt_secret_key
  }
  config_vars      = {}
  internal_routing = false
}

resource "heroku_addon" "database" {
  app_id = heroku_app.true_budget.id
  plan   = "heroku-postgresql:hobby-dev"
  name   = var.database_name
}
