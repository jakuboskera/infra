resource "tfe_organization" "jakuboskera" {
  name  = "jakuboskera"
  email = "iam@jakuboskera.dev"
}

resource "tfe_workspace" "terraform-cloud" {
  name              = "terraform-cloud"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "terraform-cloud"
  vcs_repo {
    branch             = "main"
    identifier         = "jakuboskera/infra"
    ingress_submodules = false
    oauth_token_id     = ""
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
    oauth_token_id     = ""
  }
}
