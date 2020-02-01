provider "cloudflare" {
  version   = "~> 2.0"
  api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  value   = "$IP.ADDRESS"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "vpn" {
  zone_id = var.cloudflare_zone_id
  name    = "vpn"
  value   = "$IP.ADDRESS"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "traefik" {
  zone_id = var.cloudflare_zone_id
  name    = "traefik"
  value   = "$IP.ADDRESS"
  type    = "A"
  proxied = false
}
