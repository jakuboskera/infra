resource "tfe_organization" "jakuboskera" {
  name  = "jakuboskera"
  email = "iam@jakuboskera.dev"
}

resource "tfe_team" "owners" {
  name         = "owners"
  organization = tfe_organization.jakuboskera.name
}

resource "tfe_team_token" "token" {
  team_id = tfe_team.owners.id
}
