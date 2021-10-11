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

resource "cloudflare_record" "jakuboskera_dev_108" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "185.199.108.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "jakuboskera_dev_109" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "185.199.109.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "jakuboskera_dev_110" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "185.199.110.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "jakuboskera_dev_111" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "185.199.111.153"
  type            = "A"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "_domainconnect" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "_domainconnect"
  value   = "connect.domains.google.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "www"
  value           = "jakuboskera.github.io"
  type            = "CNAME"
  ttl             = 1
  allow_overwrite = false
  proxied         = false
}

resource "cloudflare_record" "jakuboskera_dev_alt4" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "alt4.aspmx.l.google.com"
  type            = "MX"
  ttl             = 1
  allow_overwrite = false
  priority        = 10
}

resource "cloudflare_record" "jakuboskera_dev_alt3" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "alt3.aspmx.l.google.com"
  type            = "MX"
  ttl             = 1
  allow_overwrite = false
  priority        = 10
}

resource "cloudflare_record" "jakuboskera_dev_alt2" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "alt2.aspmx.l.google.com"
  type            = "MX"
  ttl             = 1
  allow_overwrite = false
  priority        = 5
}

resource "cloudflare_record" "jakuboskera_dev_alt1" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "alt1.aspmx.l.google.com"
  type            = "MX"
  ttl             = 1
  allow_overwrite = false
  priority        = 5
}

resource "cloudflare_record" "jakuboskera_dev_aspmx" {
  zone_id         = cloudflare_zone.jakuboskera_dev.id
  name            = "jakuboskera.dev"
  value           = "aspmx.l.google.com"
  type            = "MX"
  ttl             = 1
  allow_overwrite = false
  priority        = 1
}

resource "cloudflare_record" "google_domainkey" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "google._domainkey"
  value   = "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApSmn9ZGUilM1fpYn1JvB/PeciO7IJkNANDqsBzu3SqnalhycthurBK9Efhc9Jl2E+F8c/3yUWKEBdRoI6Cmi02M0qdtIVLKle1poahRNN3t5iJKB1G+RA2wJWbuvHnegEI22W5KghuC1CF6X+taMAskUZ1g/J/PPOIEhFPMdx7E/W/RVWHEdQnCaRFoTrIALX U0w2jHu9DqU9fAKCwamkaasvoVw98mEnE3sicF6Djk7r5tYFEJqEhZ71Ytazuxj1aLDePGxirTn97j8iyzYELFUg8XjSf5PNSW4zFqVhwIzamNplCkuAA+pCgAa0PSytwAmhN/CJLKUBwb+Ow8QhwIDAQAB"
  type    = "TXT"
  ttl     = 1
}

resource "cloudflare_record" "jakuboskera_dev_spf1" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "jakuboskera.dev"
  value   = "v=spf1 include:_spf.google.com ~all"
  type    = "TXT"
  ttl     = 1
}

resource "cloudflare_record" "_dmarc" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "_dmarc"
  value   = "v=DMARC1; p=none; rua=mailto:iam@jakuboskera.dev"
  type    = "TXT"
  ttl     = 1
}

resource "cloudflare_record" "guestbook_jakuboskera_dev" {
  zone_id = cloudflare_zone.jakuboskera_dev.id
  name    = "guestbook.jakuboskera.dev"
  value   = "octagonal-tangerine-mxjyk49l20i2oxn88433gmp6.herokudns.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
}
