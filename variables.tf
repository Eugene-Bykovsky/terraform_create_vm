variable "virtual_machines" {
  type = map(object({
    vm_name   = string
    vm_desc   = string
    vm_cpu    = number
    ram       = number
    disk      = number
    disk_name = string
    template  = string
  }))
}

variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "yc_token" {
  type = string
  description = "Авторизационный токен"
  sensitive = true
}

variable "subnet_id" {
  type = string
  description = "ID подсети для создания виртуальной машины"
}