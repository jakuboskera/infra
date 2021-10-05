resource "tfe_organization" "jakuboskera" {
  name  = "jakuboskera"
  email = "iam@jakuboskera.dev"
}

resource "tfe_oauth_client" "jakuboskera" {
  organization     = "jakuboskera"
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.oauth_token
  service_provider = "github"
}
