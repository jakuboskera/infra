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

resource "tfe_workspace" "terraform-cloud" {
  name              = "terraform-cloud"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "terraform-cloud"
  vcs_repo {
    branch             = "main"
    identifier         = "jakuboskera/infra"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.jakuboskera.id
  }
}

resource "tfe_workspace" "heroku" {
  name              = "heroku"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "heroku"
  vcs_repo {
    branch             = "main"
    identifier         = "jakuboskera/infra"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.jakuboskera.id
  }
}
