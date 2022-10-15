terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.23"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-20-04-x64"
  name   = "development"
  region = "fra1"
  size   = "s-1vcpu-1gb"
}