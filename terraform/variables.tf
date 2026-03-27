variable "vm_count" {
  description = "Number of web server VMs"
  type        = number
  default     = 2
}

variable "vm_cpus" {
  description = "Number of CPU cores per VM"
  type        = number
  default     = 1
}

variable "vm_memory" {
  description = "Memory in MB per VM"
  type        = number
  default     = 1024
}

variable "vm_image" {
  description = "Vagrant box name"
  type        = string
  default     = "generic/ubuntu2204"
}

variable "base_ip" {
  description = "Base IP for private network (first octets)"
  type        = string
  default     = "192.168.56.1"
}