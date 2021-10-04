variable "tfe_token" {}

provider "tfe" {
  token = var.tfe_token
}
