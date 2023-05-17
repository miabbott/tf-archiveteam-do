provider "ct" {}

provider "digitalocean" {
  token = chomp(file("~/.config/digitalocean/token"))
}

data "digitalocean_ssh_key" "terraform" {
  name = "keyname"
}

data "ct_config" "config" {
  content = file("config.yaml")
  strict  = true
}

terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    ct = {
      source  = "poseidon/ct"
      version = "0.13.0"
    }
  }
}