variable domain {
  type        = string
  description = "Domain for the virtual machine fqdn"
  default     = "rhdemo.labs"
}

variable libvirt_network {
  type        = string
  description = "Name of libvirt network to be used for the VM"
  default     = "rhel-net"
}

variable libvirt_pool {
  type        = string
  description = "Name of libvirt pool to be used for the VM"
  default     = "rhel-pool"
}

variable disk_size {
  type        = number
  description = "Size in GBs of root volume for the VM"
  default     = 40
}

variable network_cidr {
  type        = list
  description = "Network CIDR for libvirt network definition"
  default     = ["192.168.217.0/24"]
}

