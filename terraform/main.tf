
terraform {
 required_version = ">= 1.0"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.6.14"
      configuration_aliases = [ libvirt ]
    }
  }
}

provider "libvirt" {
  uri = "qemu:///system"
}

module "libvirt_resources" {
  source = "./modules/00_libvirt_resources"

# Variables
  domain = var.domain
  network_cidr = var.network_cidr
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
}

module "rhel_server" { 
  source = "./modules/01_rhel_server"
  depends_on = [module.libvirt_resources]
  
# Variables
  domain = var.domain
  libvirt_network = var.libvirt_network
  libvirt_pool = var.libvirt_pool
  disk_size = var.disk_size
}


