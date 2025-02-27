terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone      = "ru-central1-b"
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  token     = var.yc_token
}