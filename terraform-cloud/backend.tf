terraform {
  backend "remote" {
    organization = "jakuboskera"

    workspaces {
      name = "terraform-cloud"
    }
  }

  required_version = ">= 0.13.0"
}
