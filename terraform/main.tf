terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = "~> 3.0"
    }
  }
}

provider "vagrant" {

}

resource "vagrant_box" "web" {
  count = 2
  source = "generic/ubuntu2204"
  name   = "web-server-${count.index + 1}"
  providers = {
    virtualbox = {
      memory = 1024
      cpus   = 1
    }
  }
  network_adapters = {
    type = "private_network"
    ip   = "192.168.56.1${count.index + 1}"
  }
}

output "web_ips" {
  value = {
    web1 = vagrant_box.web[0].provider["virtualbox"].network_adapters[0].ip
    web2 = vagrant_box.web[1].provider["virtualbox"].network_adapters[0].ip
  }
}