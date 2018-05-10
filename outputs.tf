output "ip address" {
  value = "${digitalocean_droplet.thredds.ipv4_address}"
}
