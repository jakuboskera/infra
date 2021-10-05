resource "tfe_workspace" "heroku" {
  name              = "heroku"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "heroku"
  vcs_repo {
    branch             = "main"
    identifier         = "jakuboskera/infra"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.jakuboskera.oauth_token_id
  }
}

resource "tfe_variable" "heroku-heroku_email" {
  key          = "heroku_email"
  value        = var.heroku_email
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.heroku.id
  description  = "Heroku email"
}

resource "tfe_variable" "heroku-heroku_api_key" {
  key          = "heroku_api_key"
  value        = var.heroku_api_key
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.heroku.id
  description  = "Heroku token"
}
