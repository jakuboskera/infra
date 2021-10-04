resource "tfe_organization" "jakuboskera" {
  name  = "jakuboskera"
  email = "iam@jakuboskera.dev"
}

resource "tfe_workspace" "heroku" {
  name         = "heroku"
  organization = tfe_organization.jakuboskera.id
}
