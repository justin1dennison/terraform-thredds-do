variable "region" {
  default = "nyc1"
}

variable "ssh_keyname" {
  default = "thredds-ssh-key"
}

variable "public_keypath" {}

variable "image" {
  default = "ubuntu-16-04-x64"
}

variable "name" {
  default = "thredds-server"
}

variable "size" {
  default = "1gb"
}

variable "dotoken" {
  description = "This is your API token for Digital Ocean"
}
