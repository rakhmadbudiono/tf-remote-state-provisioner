terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.digitalocean_token

  spaces_access_id  = var.access_id
  spaces_secret_key = var.secret_key
}

resource "digitalocean_spaces_bucket" "bucket" {
  name   = var.bucket_name
  region = "sgp1"
}
