resource "digitalocean_droplet" "archiveteam" {
  # fcos-38 in tor1
  image  = "132823343"
  name   = "archiveteam"
  region = "tor1"
  size   = "s-2vcpu-2gb"
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
  user_data = data.ct_config.config.rendered
}
