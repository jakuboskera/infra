resource "tfe_workspace" "terraform-cloud" {
  name              = "terraform-cloud"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "terraform-cloud"
  vcs_repo {
    branch             = "main"
    identifier         = "jakuboskera/infra"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.jakuboskera.oauth_token_id
  }
}

resource "tfe_variable" "terraform-cloud-heroku_email" {
  key          = "heroku_email"
  value        = var.heroku_email
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Heroku email"
}

resource "tfe_variable" "terraform-cloud-heroku_api_key" {
  key          = "heroku_api_key"
  value        = var.heroku_api_key
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Heroku api key"
}

resource "tfe_variable" "terraform-cloud-tfe_token" {
  key          = "tfe_token"
  value        = var.tfe_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Terraform Cloud token"
}

resource "tfe_variable" "terraform-cloud-oauth_token" {
  key          = "oauth_token"
  value        = var.oauth_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "GitHub token"
}

resource "tfe_variable" "terraform-cloud-cloudflare_api_key" {
  key          = "cloudflare_api_key"
  value        = var.cloudflare_api_key
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Cloudflare api key"
}

resource "tfe_variable" "terraform-cloud-cloudflare_email" {
  key          = "cloudflare_email"
  value        = var.cloudflare_email
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Cloudflare email"
}
