variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "yc_token" {
  type        = string
  description = "Авторизационный токен"
  sensitive   = true
}

variable "subnet_id" {
  type        = string
  description = "ID подсети для создания виртуальной машины"
}