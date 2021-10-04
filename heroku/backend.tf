terraform {
  backend "remote" {
    organization = "jakuboskera"

    workspaces {
      name = "heroku"
    }
  }

  required_version = ">= 0.13.0"
}
