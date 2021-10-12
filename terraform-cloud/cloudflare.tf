resource "tfe_workspace" "cloudflare" {
  name              = "cloudflare"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "cloudflare"
  vcs_repo {
    branch             = "main"
    identifier         = "jakuboskera/infra"
    ingress_submodules = false
    oauth_token_id     = tfe_oauth_client.jakuboskera.oauth_token_id
  }
}

resource "tfe_variable" "cloudflare-cloudflare_email" {
  key          = "cloudflare_email"
  value        = var.cloudflare_email
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.cloudflare.id
  description  = "Cloudflare email"
}

resource "tfe_variable" "cloudflare-cloudflare_api_key" {
  key          = "cloudflare_api_key"
  value        = var.cloudflare_api_key
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.cloudflare.id
  description  = "Cloudflare api key"
}

resource "tfe_variable" "cloudflare-icloud_dns_token" {
  key          = "icloud_dns_token"
  value        = var.icloud_dns_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.cloudflare.id
  description  = "iCloud DNS token"
}
