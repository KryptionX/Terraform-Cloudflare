provider "cloudflare" {
  version   = "~> 2.0"
  api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone_id_0
  name    = "www"
  value   = "$IP.ADDRESS"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "vpn" {
  zone_id = var.cloudflare_zone_id_0
  name    = "vpn"
  value   = "$IP.ADDRESS"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "traefik" {
  zone_id = var.cloudflare_zone_id_0
  name    = "traefik"
  value   = "$IP.ADDRESS"
  type    = "A"
  proxied = false
}
