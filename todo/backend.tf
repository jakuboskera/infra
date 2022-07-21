terraform {
  backend "remote" {
    organization = "jakuboskera"

    workspaces {
      name = "todo"
    }
  }

  required_version = ">= 0.13.0"
}
