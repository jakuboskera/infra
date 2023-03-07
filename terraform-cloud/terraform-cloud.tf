resource "tfe_workspace" "terraform-cloud" {
  name              = "terraform-cloud"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "terraform-cloud"
}

# These vars are needed to be part of terraform-cloud workspace in
# order create these vars in other workspaces like cloudflare, etc.
# and then used by this workspaces
resource "tfe_variable" "terraform-cloud-tfe_token" {
  key          = "tfe_token"
  value        = var.tfe_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Terraform Cloud token"
}

resource "tfe_variable" "terraform-cloud-cloudflare_api_key" {
  key          = "cloudflare_api_key"
  value        = var.cloudflare_api_key
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Cloudflare api key"
}

resource "tfe_variable" "terraform-cloud-cloudflare_email" {
  key          = "cloudflare_email"
  value        = var.cloudflare_email
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "Cloudflare email"
}

resource "tfe_variable" "terraform-cloud-icloud_dns_token" {
  key          = "icloud_dns_token"
  value        = var.icloud_dns_token
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "iCloud DNS token"
}

resource "tfe_variable" "terraform-cloud-todo_api_key" {
  key          = "todo_api_key"
  value        = var.todo_api_key
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.terraform-cloud.id
  description  = "API key for https://todo.jakuboskera.dev application"
}
