resource "heroku_app" "write-comment" {
  name   = "write-comment"
  region = "eu"
  acm    = false
}

resource "heroku_addon" "write-comment" {
  app  = heroku_app.write-comment.name
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_domain" "write-comment" {
  app      = heroku_app.write-comment.name
  hostname = "guestbook.jakuboskera.dev"
}

resource "heroku_app" "should-be-done" {
  name   = "should-be-done"
  region = "eu"
  acm    = false
}

resource "heroku_addon" "should-be-done" {
  app  = heroku_app.should-be-done.name
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_domain" "should-be-done" {
  app      = heroku_app.should-be-done.name
  hostname = "todo.jakuboskera.dev"
}

output "write-comment_url" {
  value = "https://${heroku_app.write-comment.name}.herokuapp.com"
}

output "should-be-done_url" {
  value = "https://${heroku_app.should-be-done.name}.herokuapp.com"
}
