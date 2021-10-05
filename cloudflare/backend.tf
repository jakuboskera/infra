terraform {
  backend "remote" {
    organization = "jakuboskera"

    workspaces {
      name = "cloudflare"
    }
  }

  required_version = ">= 0.13.0"
}
