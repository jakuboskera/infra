resource "tfe_workspace" "todo" {
  name              = "todo"
  organization      = tfe_organization.jakuboskera.id
  working_directory = "todo"
}

resource "tfe_variable" "todo-todo_api_key" {
  key          = "todo_api_key"
  value        = var.todo_api_key
  category     = "terraform"
  sensitive    = true
  workspace_id = tfe_workspace.todo.id
  description  = "API key for https://todo.jakuboskera.dev application"
}
