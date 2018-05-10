provider "digitalocean" {
  token = "${var.dotoken}"
}

resource "digitalocean_ssh_key" "thredds-ssh-key" {
  name       = "${var.ssh_keyname}"
  public_key = "${file(var.public_keypath)}"
}

resource "digitalocean_droplet" "thredds" {
  image    = "${var.image}"
  name     = "${var.name}"
  region   = "${var.region}"
  size     = "${var.size}"
  ssh_keys = ["${digitalocean_ssh_key.thredds-ssh-key.id}"]

  connection {
    type        = "ssh"
    user        = "root"
    private_key = "${file(var.private_keypath)}"
  }

  provisioner "remote-exec" {
    scripts = [
      "scripts/base.sh",
    ]
  }
}
