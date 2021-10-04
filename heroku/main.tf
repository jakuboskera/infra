resource "heroku_app" "write-comment" {
  name   = "write-comment"
  region = "eu"
}

resource "heroku_addon" "write-comment" {
  app  = heroku_app.write-comment.name
  plan = "heroku-postgresql:hobby-dev"
}

resource "heroku_domain" "write-comment" {
  app      = heroku_app.write-comment.name
  hostname = "guestbook.jakuboskera.dev"
}

output "write-comment_url" {
  value = "https://${heroku_app.write-comment.name}.herokuapp.com"
}
