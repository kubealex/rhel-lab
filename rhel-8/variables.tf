variable domain {
  type        = string
  description = "Domain for the virtual machine fqdn"
  default     = "virt-test"
}

variable libvirt_network {
  type        = string
  description = "Name of libvirt network to be used for the VM"
  default     = "vm-net"
}

variable libvirt_pool {
  type        = string
  description = "Name of libvirt pool to be used for the VM"
  default     = "vm-pool"
}

variable disk_size {
  type        = number
  description = "Size in GBs of root volume for the VM"
  default     = 40
}

variable kickstart_image {
  type        = string
  description = "Path for the kickstart image"
  default     = "/tmp/oemdrv.img"
}

variable os_image {
  type        = string
  description = "URL/path of the image to be used for the VM provisioning"
  default     = "/tmp/rhel7.iso"
}

variable authorized_key_path {
  type        = string
  description = "Public key to be added to the VM"
  default     = "~/.ssh/id_rsa.pub"
}

variable network_cidr {
  type        = list
  description = "Network CIDR for libvirt network definition"
  default     = ["192.168.222.0/24"]
}

variable cluster_name {
  type        = string
  description = "Name to use for libvirt resource definition"
  default     = "satellite"
}

variable libvirt_pool_path {
  type        = string
  description = "Path for libvirt pool definition"
  default     = "/var/lib/libvirt/images"
}
