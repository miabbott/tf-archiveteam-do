# Run Archive Team Warrior on DigitalOcean

Terraform configuration to deploy a Fedora CoreOS droplet with an Archive Team Warrior container started by default.

## Requirements

- DigitalOcean account + API token
- SSH key added to your DigitalOcean account
- Fedora CoreOS image to be previously uploaded to the region you want to deploy to
- Terraform installed

## Usage

1. Get an API Token from DigitalOcean and stick it in `~/.config/digitalocean/token`
2. Edit `main.tf` to use an SSH key that was already added to your DigitalOcean account
3. Edit `droplet.tf` to use the image ID of the Fedora CoreOS image that you uploaded and change any other parameters you would like
4. Edit `config.yaml` to include your SSH public key and perhaps your `DOWNLOADER` username
5. Run `terraform` commands:
   1. `terraform init`
   2. `terraform fmt`
   3. `terraform validate`
   4. `terraform plan -out=warrior.plan`
   5. `terraform apply warrior.plan`

## References

- [Butane Reference](https://coreos.github.io/butane/)
- [Podman Quadlet Reference](https://docs.podman.io/en/latest/markdown/podman-systemd.unit.5.html)
- [Fedora CoreOS Docs for DigitalOcean](https://docs.fedoraproject.org/en-US/fedora-coreos/provisioning-digitalocean/)
- [How to Configure Terraform for DigitalOcean](https://docs.digitalocean.com/reference/terraform/getting-started/)
- [Typhoon DigitalOcean Docs](https://typhoon.psdn.io/fedora-coreos/digitalocean/)
