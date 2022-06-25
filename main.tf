terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
      version = "1.25.1"
    }
  }
}

provider "linode" {
  token = var.linode_token
}

resource "random_pet" "server" {
}

resource "linode_instance" "terraform1" {
  image           = "linode/ubuntu20.04"
  label           = "terraform-${random_pet.server.id}"
  group           = "Terraform"
  region          = "us-west"
  type            = "g6-nanode-1"
  authorized_keys = var.authorized_keys
  root_pass       = var.root_password
}
