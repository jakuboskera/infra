resource "tfe_workspace" "cloudflare" {
  name              = "cloudflare"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "clourflare"
  vcs_repo {
    branch             = "main"
    identifier         = "jakuboskera/infra"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.jakuboskera.oauth_token_id
  }
}

resource "tfe_variable" "cloudflare-cloudflare_token" {
  key          = "cloudflare_token"
  value        = var.cloudflare_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.heroku.id
  description  = "Cloudflare token"
}
