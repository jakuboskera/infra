variable "heroku_api_key" {}

provider "heroku" {
  email   = "iam@jakuboskera.dev"
  api_key = var.heroku_api_key
}
