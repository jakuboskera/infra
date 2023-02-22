resource "todo_task" "coding" {
  text = "Code every day to keep your brain focused"
}

resource "todo_task" "football" {
  text = "Play a football to keep your body in physical health"
}

resource "todo_task" "cooking" {
  text = "Cook more and more to become a masterchief"
}

resource "todo_task" "girlfriend" {
  text    = "Find a kind and pretty girlfriend"
  is_done = true
}
