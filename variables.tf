# variable "do_token" {
#   type = string
# }

variable "region" {
  type    = string
  default = "nyc1"
}

variable "wp_vm_count" {
  type    = number
  default = 2
  description = "Numeros de Vm WordPress"
  validation {
    condition = var.wp_vm_count > 1
    error_message = "O numeros minimo de vm é 2"
  }
}

variable "vms_ssh" {
  type = string
  description = "Chave SSH para as VMS"
}