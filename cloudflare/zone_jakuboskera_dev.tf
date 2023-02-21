resource "cloudflare_zone" "jakuboskera_dev" {
  zone = "jakuboskera.dev"
}

resource "cloudflare_zone_settings_override" "jakuboskera_dev" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  settings {
    always_use_https         = "on"
    automatic_https_rewrites = "on"
    ssl                      = "flexible"
  }
}

resource "cloudflare_record" "jakuboskera_dev_domainconnect" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "_domainconnect"
  value   = "connect.domains.google.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "jakuboskera_dev_mx01" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "@"
  value           = "mx01.mail.icloud.com"
  type            = "MX"
  ttl             = 3600
  allow_overwrite = false
  priority        = 10
}

resource "cloudflare_record" "jakuboskera_dev_mx02" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "@"
  value           = "mx02.mail.icloud.com"
  type            = "MX"
  ttl             = 3600
  allow_overwrite = false
  priority        = 10
}

resource "cloudflare_record" "jakuboskera_dev_spf1" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "@"
  value   = "v=spf1 redirect=icloud.com"
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "jakuboskera_dev_dmarc" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "_dmarc"
  value   = "v=DMARC1; p=none; rua=mailto:iam@jakuboskera.dev"
  type    = "TXT"
  ttl     = 1
}

resource "cloudflare_record" "jakuboskera_dev_sig1" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "sig1._domainkey"
  value   = "sig1.dkim.jakuboskera.dev.at.icloudmailadmin.com"
  type    = "CNAME"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "jakuboskera_dev_personal" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "@"
  value   = var.icloud_dns_token
  type    = "TXT"
  ttl     = 3600
}

resource "cloudflare_record" "jakuboskera_dev_108" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "@"
  value           = "185.199.108.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "jakuboskera_dev_109" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "@"
  value           = "185.199.109.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "jakuboskera_dev_110" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "@"
  value           = "185.199.110.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "jakuboskera_dev_111" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "@"
  value           = "185.199.111.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "www_jakuboskera_dev" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "www"
  value           = "jakuboskera.github.io"
  type            = "CNAME"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "guestbook_jakuboskera_dev" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "guestbook"
  value   = "octagonal-tangerine-mxjyk49l20i2oxn88433gmp6.herokudns.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "todo_jakuboskera_dev" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "todo"
  value   = "2a09:8280:1::6:e9e6"
  type    = "AAAA"
  ttl     = 1
  proxied = false
}

resource "cloudflare_record" "acme_challenge_todo" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "_acme-challenge.todo"
  value   = "todo.jakuboskera.dev.d80don.flydns.net."
  type    = "CNAME"
  ttl     = 1
  proxied = false
}
